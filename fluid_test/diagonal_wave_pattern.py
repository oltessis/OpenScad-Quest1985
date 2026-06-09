
import numpy as np
import matplotlib.pyplot as plt
from scipy.ndimage import gaussian_filter

# grid
N = 300
x = np.linspace(-10, 10, N)
y = np.linspace(-10, 10, N)
X, Y = np.meshgrid(x, y)

t = 0.0  # animate this later

# wave parameters
waves = [
    (1.4, np.deg2rad(25)),
    (1.5, np.deg2rad(35)),
    (1.6, np.deg2rad(45)),
    (1.45, np.deg2rad(60)),
]

Z = np.zeros_like(X)

for k, theta in waves:
    Z += np.sin(
        k * (X * np.cos(theta) + Y * np.sin(theta)) - 1.2 * t
    )

# normalize
Z /= len(waves)

# soften (very important)
Z = gaussian_filter(Z, sigma=1.2)

# display
plt.imshow(Z, cmap="Blues", interpolation="bilinear")
plt.axis("off")
plt.show()
