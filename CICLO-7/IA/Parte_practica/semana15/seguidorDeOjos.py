from cmath import rect
import re
import cv2

class SeguidorOjos:
    def __init__(self,rutaCasacadRostros,rutaCascadaOjos):
        # cargar el detector de rostros y ojos
        self.cascadaRostros = cv2.CascadeClassifier(rutaCasacadRostros)
        self.cascadaOjos = cv2.CascadeClassifier(rutaCascadaOjos)

    def seguir(self,imagen):
        rectsRostros = self.cascadaRostros.detectMultiScale(imagen,
            scaleFactor = 1.1,
            minNeighbors = 5,
            minSize = (30,30),
            flags = cv2.CASCADE_SCALE_IMAGE)

        rects = []

        for (rX,rY,rW,rH) in rectsRostros:
            rostroRect = imagen[rY:rY+rH,rX:rX+rW]
            rects.append((rX,rY,rX+rW,rY+rH))

            rectsOjos = self.cascadaOjos.detectMultiScale(rostroRect,
                scaleFactor = 1.1,
                minNeighbors = 10,
                minSize = (20,20),
                flags = cv2.CASCADE_SCALE_IMAGE)

            for (oX,oY,oW,oH) in rectsOjos:
                rects.append((rX+oX,rY+oY,rX+oX+oW,rY+oY+oH))

        return rects 