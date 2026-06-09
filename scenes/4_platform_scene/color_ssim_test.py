
import os
import cv2
from skimage.metrics import structural_similarity as ssim
from PIL import Image
import subprocess
import numpy as np

img1 = np.array(Image.open("video/frames/frame_000173.png").convert("RGB"))

best_score = -1.0 
best_seed = None

for distance in range(0,-101,-1):
    cmd = [
        "openscad",
        "-o", "scenes/star_intro/quest_intro.png",
        "--imgsize=640,480",
        "-D", f"distance={distance}",
        '--colorscheme=Tomorrow Night',  # quotes are optional here
        "scenes/star_intro/quest_intro.scad"
    ]

    openscad_run = subprocess.run(cmd, capture_output=True,text=True)

    if openscad_run.returncode != 0:
        print("OpenSCAD failed!")
        print(openscad_run.stderr)
    else:
        print("OpenSCAD ran successfully. Output shoud be in quest_intro.png")


    img2 = np.array(Image.open("scenes/star_intro/quest_intro.png").convert("RGB"))
    
    print(f"on attempt number {distance}")

    score, diff = ssim(
        img1,
        img2,
        channel_axis=2,   # color channels
        full=True
    )

    if score > best_score:
        best_score = score 
        best_seed = distance
        print(f"the new best seed is, seed={best_seed}, score={best_score:.6f}")



print("\n=== BEST RESULT ===")
print(f"seed = {best_seed}")
print(f"score = {best_score}")

