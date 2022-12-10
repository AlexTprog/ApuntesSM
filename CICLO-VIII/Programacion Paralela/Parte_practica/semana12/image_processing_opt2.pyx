from cpython cimport array

def compute_pixel(array.array image, int idx, int width, int height):
    cdef int i = idx
    cdef int w = width
    cdef int h = height
    if is_upper_left(i):
        return compute_upper_left(image, i, w)
    elif is_upper_right(i, w):
        return compute_upper_right(image, i, w)
    elif is_lower_left(i, w, h):
        return compute_lower_left(image, i, w)
    elif is_lower_right(i, w, h):
        return compute_lower_right(image, i, w)
    elif is_upper_border(i, w):
        return compute_up(image, i, w)
    elif is_lower_border(i, w, h):
        return compute_down(image, i, w)
    elif is_right_border(i, w):
        return compute_right(image, i, w)
    elif is_left_border(i, w):
        return compute_left(image, i, w)
    else:
        return compute_internal(image, i, w)

cdef int is_upper_left(int i):
    if i == 0:
        return 1
    return 0

cdef int is_upper_right(int i, int width):
    if i == width - 1:
        return 1
    return 0

cdef int is_lower_left(int i, int width, int height):
    if i == (width*(height-1)):
        return 1
    return 0

cdef int is_lower_right(int i, int width, int height):
    if i == (width*height-1):
        return 1
    return 0

cdef int is_upper_border(int i, int width):
    if i < width:
        return 1
    return 0

cdef int is_lower_border(int i, int width, int height):
    if i > width*(height-1)-1:
        return 1
    return 0

cdef int is_left_border(int i, int width):
    if i % width == 0 :
        return 1
    return 0

cdef int is_right_border(int i, int width):
    if i % width == width-1:
        return 1
    return 0

cdef int compute_upper_left(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i+width] + image.data.as_ints[i+width+1])/4

cdef int compute_lower_left(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i-width] + image.data.as_ints[i-width+1])/4

cdef int compute_upper_right(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i+width] + image.data.as_ints[i+width-1])/4

cdef int compute_lower_right(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i-width] + image.data.as_ints[i-width-1])/4

cdef int compute_left(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i-width] + image.data.as_ints[i+width] + image.data.as_ints[i+1-width] + image.data.as_ints[i+1+width])/6

cdef int compute_right(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i-width] + image.data.as_ints[i+width] + image.data.as_ints[i-1] + image.data.as_ints[i+width-1] + image.data.as_ints[i-width-1])/6

cdef int compute_up(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i+1] + image.data.as_ints[i+width] + image.data.as_ints[i+width-1] + image.data.as_ints[i+width+1])/6

cdef int compute_down(array.array image, int i, int width):
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i+1] + image.data.as_ints[i-width] + image.data.as_ints[i-width-1] + image.data.as_ints[i-width+1])/6

cdef int compute_internal(array.array image, int idx, int w):
    cdef int val
    cdef int i = idx
    cdef int width = w
    # view here on how to access raw pointers https://cython.readthedocs.io/en/latest/src/tutorial/array.html#zero-overhead-unsafe-access-to-raw-c-pointer
    val = image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i-1] + image.data.as_ints[i-width] + image.data.as_ints[i+width] 
    val += image.data.as_ints[i+1+width] + image.data.as_ints[i+1-width] + image.data.as_ints[i-1+width] + image.data.as_ints[i-1-width] 
    return val/9
