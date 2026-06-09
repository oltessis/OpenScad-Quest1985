
from pathlib import Path
from PIL import Image

ROOT = Path("renders/5_temple_scenes")
OUT_GIF = Path("temple_scene.gif")

FRAME_DURATION_MS = 40   # 25 fps → 40ms
LOOP = 0                # 0 = infinite loop

def num_prefix(name):
    return int(name.split("_", 1)[0])

frames = []

# --- sort scene folders numerically ---
scene_dirs = sorted(
    [d for d in ROOT.iterdir() if d.is_dir() and d.name.split("_",1)[0].isdigit()],
    key=lambda d: num_prefix(d.name)
)

for scene in scene_dirs:
    print("Scene:", scene.name)

    # --- sort frames numerically ---
    images = sorted(scene.glob("frame*.png"))

    for img_path in images:
        img = Image.open(img_path).convert("RGBA")
        frames.append(img)

# --- save GIF ---
frames[0].save(
    OUT_GIF,
    save_all=True,
    append_images=frames[1:],
    duration=FRAME_DURATION_MS,
    loop=LOOP,
    optimize=False,
    disposal=2
)

print("GIF written to:", OUT_GIF)
