#!/usr/bin/python3
import sys

x = 0.0
for n in sys.argv[1:]:
    x += float(n)
print(x)
