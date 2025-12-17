#! /usr/bin/env python

import fileinput
lines = [x.strip().rstrip(' #').lstrip('# ') for x in fileinput.input()]
line_len = max(len(line) for line in lines)
total_len = line_len + 5


print('#' * total_len)
for line in lines:
    if len(line) == 0:
        continue
    print("## ", end = '')
    print(line, end = '')
    print(' ' * (line_len - len(line)), end = '')
    print(' #')
print('#' * total_len)
