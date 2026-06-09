

import numpy as np
import matplotlib.pyplot as plt
import os

# output directory
out_dir = "ripple_frames"
os.makedirs(out_dir, exist_ok=True)

# grid
N = 200
x = np.linspace(-5, 5, N)
y = np.linspace(-5, 5, N)
X, Y = np.meshgrid(x, y)

# parameters
k = 2 * np.pi / 1.5
theta = np.pi / 4
frames = 60

for i in range(frames):
    t = i / frames  # normalized time [0,1)

    # traveling crossed waves
    Z = (
        np.sin(k * (X*np.cos(theta) + Y*np.sin(theta)) - 2*np.pi*t) +
        np.sin(k * (X*np.cos(theta) - Y*np.sin(theta)) - 2*np.pi*t)
    )

    # normalize to [0,1]
    Z = (Z - Z.min()) / (Z.max() - Z.min())

    # save frame
    plt.imsave(
        f"{out_dir}/ripple_{i:03d}.png",
        Z,
        cmap="gray"
    )

print("Done: 60 frames written to", out_dir)

