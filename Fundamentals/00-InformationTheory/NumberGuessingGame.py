'''
    Imports randam functionality
    needed to create the number to guess
'''

import random

# Variable for number of attempts
guesses_made = 0

# Create a variable based on what is typed
name = raw_input('Hello! What is your name ?\n')

# Creates a random number between 1 and 1000
number = random.randint(1, 1000)

# Ask for users name 
print 'Well, {0}, I am thinking of a number between 1 and 1000.'.format(name)

# Loops until random number matches the guess
while guesses_made >= 0:

    guess = int(raw_input('Take a guess: '))

    guesses_made += 1

    if guess < number:
        print 'Your guess is too low.'

    if guess > number:
        print 'Your guess is too high.'

    if guess == number:
        break

if guess == number:
    print 'Good job, {0}! You guessed my number in {1} guesses!'.format(name, guesses_made)
else:
    print 'Nope. The number I was thinking of was {0}'.format(number)
