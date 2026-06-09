
import numpy as np
import imageio
import os

# Image dimensions
WIDTH = 45
HEIGHT = 7
NUM_FRAMES = 60
OUTPUT_DIR = "wave_images"

# Create the output directory if it doesn't exist
os.makedirs(OUTPUT_DIR, exist_ok=True)

# Wave parameters
# Controls how many waves are on the screen
frequency = 2.0
# Controls the speed of the wave
speed = 2.0
# Controls the height of the wave
amplitude = 0.4

# Generate frames
for frame_num in range(NUM_FRAMES):
    # Create a grid of coordinates
    x = np.linspace(0, 1, WIDTH)
    y = np.linspace(0, 1, HEIGHT)
    xx, yy = np.meshgrid(x, y)

    # Calculate the wave
    # The main wave is a sine function that moves over time (frame_num)
    phase = frame_num / NUM_FRAMES * speed * np.pi
    wave = amplitude * np.sin(xx * frequency * 2 * np.pi + phase)

    # Add some gentle vertical variation to make it less uniform
    wave += (yy - 0.5) * 0.2

    # Add some noise for a more natural look
    noise = np.random.normal(0, 0.03, (HEIGHT, WIDTH))
    final_wave = wave + noise

    # Normalize the wave to the 0-1 range
    normalized_wave = (final_wave - final_wave.min()) / (final_wave.max() - final_wave.min())

    # Convert to 8-bit grayscale (0-255)
    image_data = (normalized_wave * 255).astype(np.uint8)

    # Save the frame
    file_path = os.path.join(OUTPUT_DIR, f"wave_{frame_num:02d}.png")
    imageio.imwrite(file_path, image_data)

print(f"Generated {NUM_FRAMES} frames in '{OUTPUT_DIR}'.")
