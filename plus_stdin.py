#!/usr/bin/python3
# SPDX-FileCopyrightText: 2022 Yoshihiro Ogishima

import sys

def tonum(s):
    try:
        return int(s)
    except:
        return float(s)

ans = 0
for line in sys.stdin:
    line += line.rstrip()
    ans += tonum(line)

print(ans)
