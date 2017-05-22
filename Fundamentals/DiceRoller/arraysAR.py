#!/usr/bin/env python3
#Addison Richey 2/6/17
import random
dnum = input("how many dice do you want to roll? ")
if (dnum > 0 and type(dnum) is int):
    ds = input("how many sides are on your dice? ")
    if (ds > 0 and type(ds) is int):
        dresults = [random.randint(1,ds)]
        for i in range(1,dnum):
            dresults = dresults + [random.randint(1,ds)]
        print dresults
    else:
        print "invalid input"
elif (dnum == 0):
    print "no dice rolled."
else:
    print "invalid input" 