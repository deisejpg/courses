"""
This program rolls a pair of si-sided dice and asks the user to guess the sum. 
It is called 'Number Guess.'
"""

from random import randint
from time import sleep

def get_user_guess():
  guess = int(input("Guess a number: "))
  return guess
  
def roll_dice(number_of_sides):
  first_roll = randint(1, number_of_sides)
  second_roll = randint(1, number_of_sides)
  max_val = number_of_sides * 2
  print("The maximum possible value is: %d" % max_val)
  guess = get_user_guess()
  if guess > max_val:
    print("Invalid number. Try again!")
  else:
    print("Rolling...")
    sleep(2)
    print("The first roll value is: %d" % first_roll)
    sleep(1)
    print("The second roll is: %d" % second_roll)
    sleep(1)
    total_roll = first_roll + second_roll
    print("The total value is: %d" % total_roll)
    print("Result...")
    sleep(1)
    if guess == total_roll:
      print("You won!")
    else:
      print("You lost!")

roll_dice(6)