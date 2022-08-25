# USO
# python seguimiento.py --video video/mivideo.mov
# python seguimiento.py --video video/videoIA.mov

# importar las librerías necesarias
import imutils
import numpy as np
import argparse
import time
import cv2

# construir el analizador de argumentos y analizar
# los argumentos
ap = argparse.ArgumentParser()
ap.add_argument("-v", "--video",
	help = "ruta al archivo de vídeo")
args = vars(ap.parse_args())

# define el límite superior e inferior para que el
# color sea considerado "rojo"
rojoMin = np.array([0,100,20], dtype = "uint8")
rojoMax = np.array([8, 255, 255], dtype = "uint8")

rojoMin2 = np.array([175,100,20], dtype = "uint8")
rojoMax2 = np.array([179, 255, 255], dtype = "uint8")

# cargar el vídeo
#camara = cv2.VideoCapture(args["video"])
camara = cv2.VideoCapture(0)
salida = cv2.VideoWriter('videoSeguimiento.avi',cv2.VideoWriter_fourcc(*'XVID'),20.0,(640,480))
# bucle
while True:
	# tomar el fotograma actual
	(tomado, fotograma) = camara.read()

	# revisar si se alcanzó el final del vídeo
	if not tomado:
		break

	# determinar los pixeles que caen dentro de los límites
	# y luego difuminar la imagen binaria
	frameHSV = cv2.cvtColor(fotograma,cv2.COLOR_BGR2HSV)
	rojo = cv2.inRange(frameHSV, rojoMin, rojoMax)
	rojo = cv2.GaussianBlur(rojo, (3, 3), 0)

	rojo2 = cv2.inRange(frameHSV, rojoMin2, rojoMax2)
	rojo2 = cv2.GaussianBlur(rojo2, (3, 3), 0)

	rojoPrime = cv2.add(rojo,rojo2)

	# encontrar los contornos en la imagen
	cnts = cv2.findContours(rojoPrime.copy(), cv2.RETR_EXTERNAL,
		cv2.CHAIN_APPROX_SIMPLE)
	cnts = imutils.grab_contours(cnts)

	# revisar si se encontro algún contorno 
	if len(cnts) > 0:
		# ordena los contornos y encuentra el más grande; 
		# asumiremos que este contorno corresponde al área
		# del objeto azúl
		cnt = sorted(cnts, key = cv2.contourArea, reverse = True)[0]

		# calcular el cuadro delimitador (girado) alrededor
		# del contorno y luego dibujarlo
		rect = np.int32(cv2.boxPoints(cv2.minAreaRect(cnt)))
		cv2.drawContours(fotograma, [rect], -1, (0, 255, 0), 2)

	# muestra el fotograma y la imagen binaria
	cv2.imshow("Fotograma", fotograma)
	cv2.imshow("Binaria", rojoPrime)
	salida.write(fotograma)
	# si su máquina es rápida, puede mostrar los fotogramas
	# en lo que parece ser un "avance rápido", ya que se 
	# muestran más de 32 fotogramas por segundo; un truco 
	# simple es simplemente dormir un poquito entre 
	# fotogramas; sin embargo, si su computadora es lenta, 
	# probablemente sería conveniente comentar esta línea
	time.sleep(0.025)

	# si se presiona 's', detener el bucle
	if cv2.waitKey(1) & 0xFF == ord("s"):
		break

# liberar la cámara y cerrar las ventanas abiertas
camara.release()
salida.release()
cv2.destroyAllWindows()