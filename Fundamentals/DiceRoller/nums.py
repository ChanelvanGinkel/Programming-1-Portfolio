#Jake Soulier 2/10

import random
import sys

dicenum = input("How many dice do you wanna roll? ")

dicesides = input("How many sides on the dice? ")

dicearray = []
dice = []
resultnums = []

for i in range(0,int(dicesides)):
    dice.insert(i,i+i)
for i in range(0,int(dicenum)):
    dicearray.insert(i,dice)
for i in range(0,len(dicearray)):
    result = random.randint(0,int(dicesides)-1)
    resultnums.insert(i,dicearray[i][result])
    print ('Your lucky numbers are: ', str(resultnums)[1:-1])
