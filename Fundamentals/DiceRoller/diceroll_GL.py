
#greylarson
import random
import sys

dicenum = input("how many dice are to be rolled? ")
if (not(dicenum.isdigit())):
    print("invalid input")
    sys.exit()
if (int(dicenum) <= 0 or int(dicenum) >= 100):
    print("invalid number of dice")
    sys.exit()
dicesides = input("how many sides on the dice? ")
if (not(dicesides.isdigit())):
    print("invalid input")
    sys.exit()
if (int(dicesides) <=3 or int(dicesides) >= 31):
    print("invalid number of sides")
    sys.exit()
dicearray = list()
dice = list()
resultnums = list()
    
for i in range(0,int(dicesides)):
     dice.insert(i,i+1)
for i in range(0,int(dicenum)):
    dicearray.insert(i,dice)
for i in range(0,len(dicearray)):
    result = random.randint(0,int(dicesides)-1)
    resultnums.insert(i,dicearray[i][result])
    print ("your lucky numbers: " , str(resultnums)[1:-1])
