
#!/usr/bin/env python3
import subprocess, sys
from collections import defaultdict

# Run git ls-tree to get file list
commit = sys.argv[1] if len(sys.argv) > 1 else "HEAD"

files = subprocess.check_output(
    ["git", "ls-tree", "-r", commit],
    text=True
).splitlines()

# Build a nested dict tree
tree = lambda: defaultdict(tree)
root = tree()
for f in files:
    parts = f.split("/")
    d = root
    for p in parts:
        d = d[p]

# Recursive printer
def print_tree(d, prefix=""):
    for i, (k, v) in enumerate(sorted(d.items())):
        last = (i == len(d) - 1)
        connector = "└── " if last else "├── "
        print(prefix + connector + k)
        if v:
            extension = "    " if last else "│   "
            print_tree(v, prefix + extension)

print_tree(root)
