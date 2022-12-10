from cython cimport cdivision, boundscheck
from cython.parallel import prange
from cpython cimport array

@boundscheck(False)
def filter_image(array.array image, unsigned int width, unsigned int height):
    cdef int[:] filtered = image
    cdef unsigned int i
    cdef unsigned int w = width
    cdef unsigned int h = height
    for i in prange(w*h, nogil=True):
         filtered[i] = compute_pixel(image, i, w, h)
    return filtered

cdef int compute_pixel(array.array image, int idx, int width, int height) nogil:
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

cdef int is_upper_left(int i) nogil:
    if i == 0:
        return 1
    return 0

cdef int is_upper_right(int i, int width) nogil:
    if i == width - 1:
        return 1
    return 0

cdef int is_lower_left(int i, int width, int height) nogil:
    if i == (width*(height-1)):
        return 1
    return 0

cdef int is_lower_right(int i, int width, int height) nogil:
    if i == (width*height-1):
        return 1
    return 0

cdef int is_upper_border(int i, int width) nogil:
    if i < width:
        return 1
    return 0

cdef int is_lower_border(int i, int width, int height) nogil:
    if i > width*(height-1)-1:
        return 1
    return 0

@cdivision
cdef int is_left_border(int i, int width) nogil:
    if i % width == 0 :
        return 1
    return 0

@cdivision
cdef int is_right_border(int i, int width) nogil:
    if i % width == width-1:
        return 1
    return 0

cdef int compute_upper_left(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i+width] + image.data.as_ints[i+width+1])/4

cdef int compute_lower_left(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i-width] + image.data.as_ints[i-width+1])/4

cdef int compute_upper_right(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i+width] + image.data.as_ints[i+width-1])/4

cdef int compute_lower_right(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i-width] + image.data.as_ints[i-width-1])/4

cdef int compute_left(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i-width] + image.data.as_ints[i+width] + image.data.as_ints[i+1-width] + image.data.as_ints[i+1+width])/6

cdef int compute_right(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i-width] + image.data.as_ints[i+width] + image.data.as_ints[i-1] + image.data.as_ints[i+width-1] + image.data.as_ints[i-width-1])/6

cdef int compute_up(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i+1] + image.data.as_ints[i+width] + image.data.as_ints[i+width-1] + image.data.as_ints[i+width+1])/6

cdef int compute_down(array.array image, int i, int width) nogil:
    return (image.data.as_ints[i] + image.data.as_ints[i-1] + image.data.as_ints[i+1] + image.data.as_ints[i-width] + image.data.as_ints[i-width-1] + image.data.as_ints[i-width+1])/6

cdef int compute_internal(array.array image, int idx, int w) nogil:
    cdef int val
    cdef int i = idx
    cdef int width = w
    # view here on how to access raw pointers https://cython.readthedocs.io/en/latest/src/tutorial/array.html#zero-overhead-unsafe-access-to-raw-c-pointer
    val = image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i-1] + image.data.as_ints[i-width] + image.data.as_ints[i+width] 
    val += image.data.as_ints[i+1+width] + image.data.as_ints[i+1-width] + image.data.as_ints[i-1+width] + image.data.as_ints[i-1-width] 
    return val/9
