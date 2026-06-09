
import numpy as np
import matplotlib.pyplot as plt

# grid
Nx, Ny = 300, 200
x = np.linspace(0, 10, Nx)
y = np.linspace(0, 6, Ny)
X, Y = np.meshgrid(x, y)

# parameters
wavelength = 1.0
kx = 2 * np.pi / wavelength
row_height = 0.6
t = 0.0  # animate this

# determine row index
row_index = np.floor(Y / row_height)

# brick stagger: shift every other row
shift = (row_index % 2) * (wavelength / 2)

# base wave
Z = np.sin(kx * (X + shift))

# global oscillation (high <-> low)
Z *= np.cos(2 * np.pi * t)

# normalize for viewing
Z = (Z - Z.min()) / (Z.max() - Z.min())

plt.imshow(Z, cmap="gray", interpolation="bilinear")
plt.axis("off")
plt.show()
