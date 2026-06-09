import numpy as np
from PIL import Image
import os
import shutil

def generate_wave_evolution(width=45, height=7, num_frames=60, folder="wave_evolution"):
    # Create or refresh the output folder
    if os.path.exists(folder):
        shutil.rmtree(folder)
    os.makedirs(folder)

    x = np.linspace(0, 2 * np.pi, width)
    center_y = (height - 1) / 2
    amplitude = (height - 1) / 2

    for frame in range(num_frames):
        # Phase shift: moves the wave from 0 to 2*pi over the duration
        phase = 2 * np.pi * (frame / num_frames)
        sine_points = center_y + amplitude * np.sin(x - phase)
        
        buffer = np.zeros((height, width), dtype=np.uint8)
        
        for i in range(width):
            for j in range(height):
                dist = abs(j - sine_points[i])
                # "Rounded" look: bright center with a soft falloff
                brightness = max(0, 255 - int(dist * 90)) 
                buffer[j, i] = brightness

        img = Image.fromarray(buffer, mode='L')
        img.save(f"{folder}/frame_{frame:03d}.png")

    print(f"Successfully generated {num_frames} frames in the '{folder}' folder.")

if __name__ == "__main__":
    generate_wave_evolution()
