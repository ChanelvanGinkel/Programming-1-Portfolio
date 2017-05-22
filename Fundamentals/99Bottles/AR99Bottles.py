#!/usr/bin/env python
# Addison Richey 1/25/17
for b in range(99,0,-1):
    if (b>2):
        print(str(b) + " bottles of beer on the wall, " + str(b) + " bottles of beer, take one down pass it around, " + str(b-1) + " bottles of beer on the wall.")
    elif(b == 2):
        print(str(b) + " bottles of beer on the wall, " + str(b) + " bottles of beer, take one down pass it around, " + str(b-1) + " bottle of beer on the wall.")
    else:
        print(str(b) + " bottle of beer on the wall, " + str(b) + " bottle of beer, take one down pass it around, " + str(b-1) + " bottles of beer on the wall.")
