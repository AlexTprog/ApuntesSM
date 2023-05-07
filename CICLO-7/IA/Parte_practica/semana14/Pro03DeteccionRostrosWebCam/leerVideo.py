import cv2

# captura = cv2.VideoCapture('video/videoIA.avi')
captura = cv2.VideoCapture(0)
salida = cv2.VideoWriter('video/videoIA.avi',cv2.VideoWriter_fourcc(*'XVID'),20.0,(640,480))

while (captura.isOpened()):
    ret,imagen = captura.read()
    if ret == True:
        cv2.imshow('video',imagen)
        salida.write(imagen)
        # if se presiona 's', se detiene el bucle
        if cv2.waitKey(1) & 0xFF == ord("s"):
            break
    else: break

captura.release()
salida.release()
cv2.destroyAllWindows()
