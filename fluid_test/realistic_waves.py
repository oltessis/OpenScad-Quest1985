
import numpy as np
from PIL import Image
import os

# ------------------
# Configuration
# ------------------
N = 100                  # grid size (100x100)
frames = 60              # number of frames
c = 0.25                 # wave speed
damping = 0.01           # energy loss
output_dir = "ripple_frames"

os.makedirs(output_dir, exist_ok=True)

# ------------------
# Wave step function
# ------------------
def wave_step(h, h_prev):
    laplacian = (
        np.roll(h, 1, 0) + np.roll(h, -1, 0) +
        np.roll(h, 1, 1) + np.roll(h, -1, 1) -
        4 * h
    )

    h_next = (2 * h - h_prev) + (c ** 2) * laplacian
    h_next *= (1 - damping)
    return h_next

# ------------------
# Initialize fields
# ------------------
h = np.zeros((N, N))
h_prev = np.zeros_like(h)

# Grid-like disturbance
h[::8, :] = 1.0
h[:, ::8] = -1.0

# ------------------
# Simulation loop
# ------------------
for frame in range(frames):
    # Step simulation
    h_next = wave_step(h, h_prev)

    # Optional subtle noise (adds realism)
    h_next += 0.001 * np.random.randn(N, N)

    # Normalize to 0–255
    z = h_next.copy()
    z -= z.min()
    z /= z.max()
    img = (z * 255).astype(np.uint8)

    # Save frame
    Image.fromarray(img).save(
        f"{output_dir}/ripple_{frame}.png"
    )

    # Rotate buffers
    h_prev, h = h, h_next

    print(f"Saved frame {frame}")

print("Done.")
