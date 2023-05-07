import cv2 
import joblib
from utils.hog import HOG
import numpy as np
from utils import dataset
import imutils
import mahotas


MODELO_TEXTO = "svm.cpickle"
MODELO_ROSTRO = 'haarcascade_frontalface_default.xml'
FOTO = 'FOTO/foto.jpeg'
RUTA_ROSTRO = 'ROSTRO/rostro.jpg'
RUTA_DNI = 'DNI/dni.txt'
# Para la hoja
h1 = 200
w1 = 400
x1 = 150
y1 = 540
# Guarda cadena con dni
dni = ""
# Modelo para reconocer texto
model = joblib.load(MODELO_TEXTO)
# Agregar 30px a la deteccion del rostros
px = 30
# define el límite superior e inferior para que el color sea considerado "blanco"
sensitivity = 150
blancoMin = np.array([0,0,255-sensitivity])
blancoMax = np.array([255,sensitivity,255])

# Toda la Imagen 
img = cv2.imread(FOTO) 
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Recorte para el DNI
recorte = img[y1:y1+ h1,x1:x1+w1]
grayRecorte = cv2.cvtColor(recorte, cv2.COLOR_BGR2GRAY)

hog = HOG(orientations = 18, pixelsPerCell = (10, 10),
	cellsPerBlock = (1, 1), transform = True, block_norm="L2-Hys")

blurred = cv2.GaussianBlur(grayRecorte, (5, 5), 0)
edged = cv2.Canny(blurred, 30, 150)
cnts = cv2.findContours(edged.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
cnts = imutils.grab_contours(cnts)

cnts = sorted([(c, cv2.boundingRect(c)[0]) for c in cnts], key = lambda x: x[1])

face_cascade = cv2.CascadeClassifier(MODELO_ROSTRO) 
faces = face_cascade.detectMultiScale(gray, 1.1, 4)


for (x, y, w, h) in faces: 
    cv2.rectangle(img,(x, y),(x+w, y+h),(0, 0, 255), 1)      
    faces = img[y-px :y + h + px, x - px :x + w + px] 
    cv2.imshow("face",faces) 
    cv2.imwrite(RUTA_ROSTRO, faces) 
    if cv2.waitKey(0) & 0xFF == ord("s"):
        break

for (c, _) in cnts:
	(x, y, w, h) = cv2.boundingRect(c)


	if w >= 7 and h >= 20:
		roi = grayRecorte[y:y + h, x:x + w]
		thresh = roi.copy()
		T = mahotas.thresholding.otsu(roi)
		thresh[thresh > T] = 255
		thresh = cv2.bitwise_not(thresh)

		thresh = dataset.deskew(thresh, 20)
		thresh = dataset.center_extent(thresh, (20, 20))

		hist = hog.describe(thresh)
		digit = model.predict([hist])[0] 
		dni += "{}".format(digit)

		cv2.rectangle(recorte, (x, y), (x + w, y + h), (0, 255, 0), 1)
		cv2.putText(recorte, str(digit), (x - 10, y - 10),
		cv2.FONT_HERSHEY_SIMPLEX, 1.2, (0, 255, 0), 2)
		cv2.imshow("image", recorte)
		if cv2.waitKey(0) & 0xFF == ord("s"):
			break

with open(RUTA_DNI, 'w') as f:
	f.write(dni)