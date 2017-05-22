import random
dn = input ("Enter number of dice to roll")
if (dn > 0 and type(dn) is int):
ds = input ("Enter number of sides on the dice)
if (ds > 0 and type(ds) is int):
dresults = [random.randint(1,ds)]
        for i in range(1,dnum):
            dresults = dresults + [random.randint(1,ds)]
        print dresults