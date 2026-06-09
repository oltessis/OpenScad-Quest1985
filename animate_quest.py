
from pathlib import Path
import subprocess

SCENES = Path("scenes")
OUT = Path("renders")

FRAMES = 20
SIZE = "640,480"

def numeric_prefix(name):
    return int(name.split("_", 1)[0])

dirs = sorted(
    [d for d in SCENES.iterdir() if d.is_dir() and d.name.split("_",1)[0].isdigit()],
    key=lambda d: numeric_prefix(d.name)
)

for d in dirs:
    files = sorted(
        [f for f in d.glob("*.scad") if f.name.split("_",1)[0].isdigit()],
        key=lambda f: numeric_prefix(f.name)
    )

    for scad in files:
        out_dir = OUT / d.name / scad.stem
        out_dir.mkdir(parents=True, exist_ok=True)

        out_pattern = out_dir / "frame.png"

        cmd = [
            "openscad",
            "--animate", str(FRAMES),
            "--imgsize", SIZE,
            "--viewall",
            "--autocenter",
            "-o", str(out_pattern),
            str(scad)
        ]

        print("Rendering:", scad)
        subprocess.run(cmd, check=True)
