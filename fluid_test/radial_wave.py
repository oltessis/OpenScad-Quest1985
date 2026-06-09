
import numpy as np
from PIL import Image
import os

# Output settings
WIDTH = 100
HEIGHT = 100
FRAMES = 60
OUT_DIR = "ripple_frames"

os.makedirs(OUT_DIR, exist_ok=True)

# Coordinate grid (centered)
x = np.linspace(-1, 1, WIDTH)
y = np.linspace(-1, 1, HEIGHT)
X, Y = np.meshgrid(x, y)
R = np.sqrt(X**2 + Y**2)

# Animation parameters
frequency = 12.0   # ripple density
speed = 2 * np.pi  # one full loop

for frame in range(FRAMES):
    t = speed * frame / FRAMES

    # Circular ripple wave
    Z = np.sin(frequency * R - t)

    # Normalize to 0–255
    Z_norm = (Z + 1) / 2
    img = (Z_norm * 255).astype(np.uint8)

    Image.fromarray(img, mode="L").save(
        f"{OUT_DIR}/ripple_{frame:03d}.png"
    )

print("Done. Frames saved to", OUT_DIR)
