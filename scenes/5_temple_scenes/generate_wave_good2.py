import numpy as np
from PIL import Image
import os
import shutil

def generate_clean_sinusoid_evolution(width=45, height=7, num_frames=60, folder="wave_evolution"):
    if os.path.exists(folder):
        shutil.rmtree(folder)
    os.makedirs(folder)

    # x represents our horizontal axis (your z-axis)
    x = np.linspace(0, 2 * np.pi, width)
    
    # Vertical constraints
    center_y = (height - 1) / 2
    # Reduced amplitude slightly to avoid "clipping" against the top/bottom edges
    amplitude = (height - 1) / 2 - 0.5 

    for frame in range(num_frames):
        # Time evolution via phase shift
        phase = 2 * np.pi * (frame / num_frames)
        # The core sine wave path
        sine_path = center_y + amplitude * np.sin(x - phase)
        
        # Create a black background
        grid = np.zeros((height, width), dtype=np.uint8)
        
        for i in range(width):
            for j in range(height):
                # Calculate distance from the current pixel to the sine center
                dist = abs(j - sine_path[i])
                
                # Sharp falloff for a "tubular" or "rounded" look
                # This prevents the blurry overlap seen in your example
                if dist < 1.5:
                    brightness = int(255 * (1 - (dist / 1.5)**2))
                    grid[j, i] = max(0, min(255, brightness))
                else:
                    grid[j, i] = 0

        img = Image.fromarray(grid, mode='L')
        img.save(f"{folder}/frame_{frame:03d}.png")

    print(f"Done! 60 frames of the 'z-axis' sinusoid are in /{folder}")

if __name__ == "__main__":
    generate_clean_sinusoid_evolution()
