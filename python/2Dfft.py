#!/usr/bin/python3

# This script will load an image file and take the 2D FFT from it, remove the low-frequency components, and transform it back. 

from scipy import fftpack
import imageio.v2
import matplotlib.pyplot as plt

# Using image.jpeg in current dir, we take the 2 dimensional fast fourier transform
image = imageio.v2.imread('image.jpeg', as_gray=True)
fft2 = fftpack.fft2(image)

# Now need to remove the low-freq components from 'fft2'

plt.imshow(abs(fft2))
plt.show()


