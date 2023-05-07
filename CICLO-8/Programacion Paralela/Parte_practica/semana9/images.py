import array 
from random import randint

# PPM files are human readable files to store images
# first line contains the header having: P3 width height
# second line: the maximum possible color value for each pixel
# Then follows each pixel's data, P3 is plain ASCII and P6 is binary; each pixel contains data for each RGB channel
# See details here: https://en.wikipedia.org/wiki/Netpbm
def writePPM(red, green, blue, width, height, filename):
  # todo archivo necesita una cabecera, en PPM la cabecera inicia con P6 e indica el anchoe, alto y valor maximo
  ppm_header = f'P6 {width} {height} {255}\n'
  rgb = []
  for i in range(len(red)):
      rgb.append(red[i]) # Red 
      rgb.append(green[i]) # Green 
      rgb.append(blue[i]) # Blue
  image = array.array('B', rgb)

  with open(filename + '.ppm', 'wb') as f:
    f.write(bytearray(ppm_header, 'ascii'))
    image.tofile(f)


def readPPM(path):
    red = []
    green = []
    blue = []
    width = 0
    height = 0
    with open(path, "rb") as f:
        # read header
        header = f.read(2)
        f.read(1) # blank
        width = f.read(3)
        f.read(1) # blank
        height = f.read(3)
        f.read(1) # blank
        max_val = f.read(3) # blank
        while (byte := f.read(1)):
            r = int.from_bytes(byte, byteorder='big')
            red.append(r) # R
            g = int.from_bytes(f.read(1), byteorder='big')
            green.append(g) # G
            b = int.from_bytes(f.read(1), byteorder='big')
            blue.append(b) # B

    return red, green, blue

def random_image():
    data = []
    height = 480
    width = 640
    max_value = 255
    for i in range(height*width):
        data.append(randint(0, max_value))
    writePPM(data, width, height, "output")

#def draw_rectangle():
#    data = readPPM("sample.ppm")
#    width = 640
#    height = 480
#    from_point = width*10
#    to_point = width*100
#    for i in range(from_point, to_point):
#        data[i] = 180 # negro
#    writePPM(data, width, height, "gray_rectangle")

#def draw_square():
#    data = readPPM("cpu_photo_640_480.ppm")
#    width = 640
#    height = 480
#    from_line = 189
#    to_line = 423
#    from_column = 467
#    to_column = 526
#    for i in range(from_line, to_line):
#        for j in range(from_column, to_column):
#            index = j+i*width
#            data[index] = 0 # negro
#    writePPM(data, width, height, "black_square_cpu_photo")

def gaussian_blur(image):
    red, blue, green = readPPM(image)
    width = 640
    height = 480

    new_red = average(red, width, height)
    new_green = average(green, width, height)
    new_blue = average(blue, width, height)
    writePPM(new_red, new_green, new_blue, width, height, "gaussian_blur_cpu_cache")

def average(data, width, height):
    filtered = []
    for i in range(height*width):
        new_pixel = 0
        ## esquinas
        if i == 0: # esquina superior izquierda
            #             esquina   derecha      abajo          abajo-derecha
            new_pixel = (data[i] + data[i+1] + data[i+width] + data[i+width+1])/4
        elif i == width - 1: # esquina superior derecha
            #             esquina   izquierda    abajo          abajo-izquierda
            new_pixel = (data[i] + data[i-1] + data[i+width] + data[i+width-1])/4
        elif i == (width*(height-1)):  # esquina inferior izquierda
            #             esquina   derecha    arriba          arriba-derecha
            new_pixel = (data[i] + data[i+1] + data[i-width] + data[i-width+1])/4
        elif i == (width*height-1):  # esquina inferior derecha
            #             esquina   izquierda    arriba          arriba-izquierda
            new_pixel = (data[i] + data[i-1] + data[i-width] + data[i-width-1])/4
        elif i < width: #borde superior
            new_pixel = (data[i] + data[i-1] + data[i+1] + data[i+width] + data[i+width-1] + data[i+width+1])/6
        elif i > width*(height-1)-1: #borde inferior
            new_pixel = (data[i] + data[i-1] + data[i+1] + data[i-width] + data[i-width-1] + data[i-width+1])/6
        elif i % width == width-1: #borde derecho
            new_pixel = (data[i] + data[i-width] + data[i+width] + data[i-1] + data[i+width-1] + data[i-width-1])/6
        elif i % width == 0 : #borde izquierdo
            new_pixel = (data[i] + data[i+1] + data[i-width] + data[i+width] + data[i+1-width] + data[i+1+width])/6
        else:
            #                       derecha     izquierda     arriba          abajo
            new_pixel = data[i] + data[i+1] + data[i-1] + data[i-width] + data[i+width] 
            #            abajo-derecha     arriba-derecha    abajo-izquierda   arriba-izquierda
            new_pixel += data[i+1+width] + data[i+1-width] + data[i-1+width] + data[i-1-width] 
            new_pixel /= 9

        filtered.append(int(new_pixel))
    return filtered


if __name__ == "__main__":
    #random_image()
    #draw_rectangle()
    #draw_square()
    image = "cpu_cache.ppm"
    gaussian_blur(image)
