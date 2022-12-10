from cpython cimport array

def compute_internal_pixel(array.array image, int idx, int w):
    cdef int val
    cdef int i = idx
    cdef int width = w
    # view here on how to access raw pointers https://cython.readthedocs.io/en/latest/src/tutorial/array.html#zero-overhead-unsafe-access-to-raw-c-pointer
    val = image.data.as_ints[i] + image.data.as_ints[i+1] + image.data.as_ints[i-1] + image.data.as_ints[i-width] + image.data.as_ints[i+width] 
    val += image.data.as_ints[i+1+width] + image.data.as_ints[i+1-width] + image.data.as_ints[i-1+width] + image.data.as_ints[i-1-width] 
    return val/9
