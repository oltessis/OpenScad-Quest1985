
from pathlib import Path
import re

root = Path("scenes")

dir_pattern  = re.compile(r"^(\d+)_")
file_pattern = re.compile(r"^(\d+)_.*\.scad$")

count = 0

dirs = sorted(
    [d for d in root.iterdir() if d.is_dir() and dir_pattern.match(d.name)],
    key=lambda d: int(dir_pattern.match(d.name).group(1))
)

for d in dirs:
    files = sorted(
        [f for f in d.glob("*.scad") if file_pattern.match(f.name)],
        key=lambda f: int(file_pattern.match(f.name).group(1))
    )

    for f in files:
        print(f)
        count += 1

print("TOTAL:", count)
