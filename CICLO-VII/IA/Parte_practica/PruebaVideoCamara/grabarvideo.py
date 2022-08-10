import cv2 

captura = cv2.VideoCapture(0)
while (captura.isOpened()):
    ret, imagen = captura.read()
    if ret == True:
        cv2.imshow('Vídeo',imagen)
    if cv2.waitKey(0) & 0xFF == ord('s'):
        break
    else:
        break
    
captura.release()
cv2.destroyAllWindows()