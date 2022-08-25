# importar las librerías necesarias
import imutils
import numpy as np
import time
import cv2

# define el límite superior e inferior para que el
# color sea considerado "blanco"
sensitivity = 155
blancoMin = np.array([0,0,255-sensitivity])
blancoMax = np.array([255,sensitivity,255])

while True:
	# tomar el fotograma actual
	fotograma = cv2.imread('FOTO/foto.jpeg')
    # determinar los pixeles que caen dentro de los límites
	# y luego difuminar la imagen binaria
	frameHSV = cv2.cvtColor(fotograma,cv2.COLOR_BGR2HSV)
	blanco = cv2.inRange(frameHSV, blancoMin, blancoMax)
	blanco = cv2.GaussianBlur(blanco, (3, 3), 0)

	# encontrar los contornos en la imagen
	cnts = cv2.findContours(blanco.copy(), cv2.RETR_CCOMP,
		cv2.CHAIN_APPROX_SIMPLE)
	cnts = imutils.grab_contours(cnts)

	# revisar si se encontro algún contorno 
	if len(cnts) > 0:
		cnt = sorted(cnts, key = cv2.contourArea, reverse = True)[0]

		# calcular el cuadro delimitador (girado) alrededor
		# del contorno y luego dibujarlo
		rect = np.int32(cv2.boxPoints(cv2.minAreaRect(cnt)))
		cv2.drawContours(fotograma, [rect], -1, (0, 255, 0), 1)

	# muestra el fotograma y la imagen binaria
	cv2.imshow("Fotograma", fotograma)
	cv2.imshow("Binaria", blanco)
	print(rect) 
    # recorte = fotograma[y1:y1+ h1,x1:x1+w1] 

	time.sleep(0.025)

	# si se presiona 's', detener el bucle
	if cv2.waitKey(0) & 0xFF == ord("s"):
		break


cv2.destroyAllWindows()