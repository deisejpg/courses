
First few lessons. Learning how to write functions.

```
def shut_down(s):
  if s == 'yes':
    return "Shutting down"
  elif s == 'no':
    return "Shutdown aborted"
  else:
    return "Sorry"
```

```
def distance_from_zero(n):
  if type(n) == int or type(n) == float:
    return abs(n)
  else:
    return "Nope"
```

```
shopping_list = ["banana", "orange", "apple"]

stock = {
  "banana": 6,
  "apple": 0,
  "orange": 32,
  "pear": 15
}
    
prices = {
  "banana": 4,
  "apple": 2,
  "orange": 1.5,
  "pear": 3
}

# Write your code below!
def compute_bill(food):
  total = 0
  for item in food:
    total += prices[item]
  return total

  def compute_bill(food):
  total = 0
  for item in food:
    if stock[item] > 0:
      total += prices[item]
      stock[item] -=1
  return total
```

```
for student in students:
  for key in student:
    print student[key]
```


Lesson Student becomes a teacher
```
lloyd = {
  "name": "Lloyd",
  "homework": [90.0, 97.0, 75.0, 92.0],
  "quizzes": [88.0, 40.0, 94.0],
  "tests": [75.0, 90.0]
}
alice = {
  "name": "Alice",
  "homework": [100.0, 92.0, 98.0, 100.0],
  "quizzes": [82.0, 83.0, 91.0],
  "tests": [89.0, 97.0]
}
tyler = {
  "name": "Tyler",
  "homework": [0.0, 87.0, 75.0, 22.0],
  "quizzes": [0.0, 75.0, 78.0],
  "tests": [100.0, 100.0]
}

# Add your function below!
def average(numbers):
  total = sum(numbers)
  total = float(total) / len(numbers)
  return total
  
def get_average(student):
  homework = average(student["homework"])
  quizzes = average(student["quizzes"])
  tests = average(student["tests"])
  return 0.1 * homework + 0.3 * quizzes + 0.6 * tests

def get_letter_grade(score):
  if score >= 90:
    return "A"
  elif score >= 80:
    return "B"
  elif score >= 70:
    return "C"
  elif score >= 60:
    return "D"
  else:
    return "F"

print get_letter_grade(get_average(lloyd))

def get_class_average(class_list):
  results = []
  for student in class_list:
    results.append(get_average(student))
  return average(results)

students = [alice, lloyd, tyler]

print get_class_average(students)
print get_letter_grade(get_class_average(students))
```

```
n.pop() #removes the item at a given index
n.remove() #removes the item number itself (do not consider the index number)
del(n[1]) #is lika a .pop in that it will remove the item at the given index, but it won't return it
```

```
n = [[1, 2, 3], [4, 5, 6, 7, 8, 9]]
# Add your function here
def flatten(lists):
  results = []
  for numbers in lists:
    for sublists in numbers:
      results.append(numbers)
  return results
    
print flatten(n)
```


Lesson 7
Battleship game
```
from random import randint

board = []

for x in range(5):
  board.append(["O"] * 5)

def print_board(board):
  for row in board:
    print " ".join(row)

print_board(board)

def random_row(board):
  return randint(0, len(board) - 1)

def random_col(board):
  return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
print ship_row
print ship_col

# Everything from here on should go in your for loop!
for turn in range(4):
  print "Turn", turn + 1
# Be sure to indent four spaces!
  guess_row = int(raw_input("Guess Row: "))
  guess_col = int(raw_input("Guess Col: "))
  
  if guess_row == ship_row and guess_col == ship_col:
    print "Congratulations! You sunk my battleship!"
    break
  else:
    if (guess_row < 0 or guess_row > 4) or (guess_col < 0 or guess_col > 4):
      print "Oops, that's not even in the ocean."
      
    elif (board[guess_row][guess_col] == "X"):
      print "You guessed that one already."
      
    else:
      print "You missed my battleship!"
      board[guess_row][guess_col] = "X"
      print turn + 1  # Print (turn + 1) here!
      print_board(board)
    if turn == 3:
      print "Game Over"
```


Section 8 
While loops
```
num = 1

while num < 11:  # Fill in the condition
  # Print num squared
  print num ** 2
  # Increment num (make sure to do this!)
  num += 1
```



```
choice = raw_input('Enjoying the course? (y/n)')

while choice != 'y' and choice != 'n':  # Fill in the condition (before the colon)
  choice = raw_input("Sorry, I didn't catch that. Enter again: ")
```


```
while True:
  print count
  count += 1
  if count ** 2 >= 50:
    break
```

```
while True:
  print count
  count += 1
  if count >= 50:
    break
```

```
import random

print "Lucky Numbers! 3 numbers will be generated."
print "If one of them is a '5', you lose!"

count = 0
while count < 3:
  num = random.randint(1, 6)
  print num
  if num == 5:
    print "Sorry, you lose!"
    break
  count += 1
else:
  print "You win!"
```


```
from random import randint

# Generates a number from 1 through 10 inclusive
random_number = randint(1, 10)

guesses_left = 3
# Start your game!
while guesses_left > 0:
  guess = int(raw_input("Your guess: "))
  num = random_number
  if guess == num:
    print "You win!"
    break
  guesses_left -=1
else:
  "You lose."
```


```
for i in range(3):
  hobby = raw_input("Hobby: ")
  hobbies.append(hobby)
  print hobbies
```


#The ','' character after our print statement means that our next print statement keeps printing on the same line.
#trailing comma
```
phrase = "A bird in the hand..."

# Add your for loop
for char in phrase:
  if char == "A" or char == "a":
    print "X",
  else:
    print char,

#Don't delete this print statement!
print
```

```
d = {'a': 'apple', 'b': 'berry', 'c': 'cherry'}

for key in d:
  # Your code here!
  print key, d[key]
```

```
choices = ['pizza', 'pasta', 'salad', 'nachos']

print 'Your choices are:'
for index, item in enumerate(choices):
  print index +1, item
```

```
#It's also common to need to iterate over two lists at once. This is where the built-in zip function comes in handy.
#zip will create pairs of elements when passed two lists, and will stop at the end of the shorter list.
#zip can handle three or more lists as well!
list_a = [3, 9, 17, 15, 19]
list_b = [2, 4, 8, 10, 30, 40, 50, 60, 70, 80, 90]

for a, b in zip(list_a, list_b):
  # Add your code here!
  if a > b:
    print a
  if b > a:
    print b
```

```
fruits = ['banana', 'apple', 'orange', 'tomato', 'pear', 'grape']

print 'You have...'
for f in fruits:
  if f == 'tomato':
    print 'A tomato is not a fruit!' #It actually is.
  print 'A', f
else:
  print 'A fine selection of fruits!'
```


```
flower_color = ["yellow", "purple", "petal", "rose", "blue"]

for color in flower_color:
  if color == "petal":
    print "This is not a colors."
  else:
    print "Colors of flowers from Central Texas"
```


Section 8.1
```
def is_even(x):
  if x % 2 == 0:
    return True
  else:
    return False

def is_int(x):
  if x - round(x) == 0:
    return True
  else:
    return False

#digit_sum function
def digt_sum(n):
  total = 0
  string_n = str(n)
  for char in string_n:
    total += int(char)
  return total
  
print digit_sum(12345678)

#function to define a factorial
def factorial(x):
  factorial = 1
  if x == 0:
    return factorial
  else:
    for i in range(1,x+1):
      factorial = factorial*i
  return factorial

def is_prime(x):
    if x < 2:
        return False
    else:
        for n in range(2, x-1):
            if x % n == 0:
                return False
        return True

print is_prime(13)
print is_prime(10)
```

Define a function called reverse that takes a string text and returns that string in reverse. #For example: reverse("abcd") should return "dcba".
You may not use reversed or [::-1] to help you with this.
You may get a string containing special characters (for example, !, @, or #).
```
def reverse(text):
  rev_text = ""
  for char in text:
    rev_text = char + rev_text
  return rev_text
```


Define a function called anti_vowel that takes one string, text, as input and returns the #text with all of the vowels removed.
For example: anti_vowel("Hey You!") should return "Hy Y!". Don't count Y as a vowel. Make #sure to remove lowercase and uppercase vowels.
```
def anti_vowel(text):
  anti_vowel = ""
  vowel = "aeiouAEIOU"
  for char in text:
    if char not in vowel:
      anti_vowel = anti_vowel + char
  return anti_vowel
```


Define a function scrabble_score that takes a string word as input and returns the equivalent scrabble score for that word.
Assume your input is only one word containing no spaces or punctuation.
As mentioned, no need to worry about score multipliers!
Your function should work even if the letters you get are uppercase, lowercase, or a mix.
Assume that you're only given non-empty strings.
```
score = {"a": 1, "c": 3, "b": 3, "e": 1, "d": 2, "g": 2, 
         "f": 4, "i": 1, "h": 4, "k": 5, "j": 8, "m": 3, 
         "l": 1, "o": 1, "n": 1, "q": 10, "p": 3, "s": 1, 
         "r": 1, "u": 1, "t": 1, "w": 4, "v": 4, "y": 4, 
         "x": 8, "z": 10}

def scrabble_score(word):
  word_count = 0
  for char in word.lower():
    word_count = word_count + score[char]
  return word_count
```


Write a function called censor that takes two strings, text and word, as input. It should #return the text with the word you chose replaced with asterisks. For example:
censor("this hack is wack hack", "hack")
should return:
```
def censor(text, word):
  words = text.split()
  stars = '*' * len(word)
  result = ''
  count = 0
  for i in words:
    if i == word:
      words[count] = stars
    count +=1
    result = " ".join(words)
  return result
```


count
Define a function called count that has two arguments called sequence and item.
Return the number of times the item occurs in the list.
For example: count([1, 2, 1, 1], 1) should return 3 (because 1 appears 3 times in the list).
There is a list method in Python that you can use for this, but you should do it the long way for practice.
Your function should return an integer.
The item you input may be an integer, string, float, or even another list!
Be careful not to use list as a variable name in your code—it's a reserved word in Python!
```
def count(sequence, item):
  #return the number of times
  #the item occurs in the list
  sum = 0
  for i in sequence:
    if i == item:
      sum = sum + 1
  return sum
```


purify
Define a function called purify that takes in a list of numbers, removes all odd numbers in 
the list, and returns the result. For example, purify([1,2,3]) should return [2].
Do not directly modify the list you are given as input; instead, return a new list
with only the even numbers.
```
def purify(x):
  #takes a list of numbers
  #removes all odd numbers
  #returns the result
  new_list=[]
  for i in x:
    if i % 2 == 0:
      new_list.append(i)
  return new_list
```


product
Define a function called product that takes a list of integers as input and returns
 the product of all of the elements in the list. For example: product([4, 5, 5])
 should return 100 (because 4 * 5 * 5 is 100).
Don't worry about the list being empty.
Your function should return an integer.
```
def product(x):
  #takes a list of integers as input
  #returns the product of all of the elements in the list
  result=1
  for i in x:
    result = result * i
  return result
```


remove_duplicates
Write a function remove_duplicates that takes in a list and removes elements
 of the list that are the same.
For example: remove_duplicates([1, 1, 2, 2]) should return [1, 2].
Don't remove every occurrence, since you need to keep a single occurrence of a number.
The order in which you present your output does not matter. So returning [1, 2, 3] is
the same as returning [3, 1, 2].
Do not modify the list you take as input! Instead, return a new list.
```
def remove_duplicates(x):
  #takes in a list
  #removes elements that are duplicated
  no_dup=[]
  for i in x:
    if i not in no_dup:
      no_dup.append(i)
  return no_dup
```


median
Write a function called median that takes a list as an input and returns the median
 value of the list. For example: median([1, 1, 2]) should return 1.
The list can be of any size and the numbers are not guaranteed to be in any 
particular order. Make sure to sort it!
If the list contains an even number of elements, your function should return the
average of the middle two.
```
def median(x):
  #takes a list as input
  #returns the median value of the list
  result=[]
  x_sorted = sorted(x)
  middle = len(x_sorted)//2
  for i in x_sorted:
    if len(x_sorted) % 2 == 0:
      result = float((x_sorted[middle] + x_sorted[middle-1]))/(float(2))
    else:
      result = float(x_sorted[middle])
  return result
```

Define a function on line 3 called print_grades with one argument, a list called grades_input.
Inside the function, iterate through grades_input and print each item on its own line.
After your function, call print_grades with the grades list as the parameter.
```
grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def print_grades(grades_input):
  for grade in grades_input:
    print grade

print_grades(grades)

#The sum of scores:
def grades_sum(scores):
  sum = 0
  for grade in scores:
    sum = sum + grade
  return sum
print grades_sum(grades)
```

Computing the Average
```
grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def grades_sum(scores):
  total = 0
  for score in scores: 
    total += score
  return total

print grades_sum(grades)

def grades_average(grades_input):
  sum_of_grades = grades_sum(grades_input)
  average = sum_of_grades / float(len(grades_input))
  return average

print grades_average(grades)
```

```
#The variance
def grades_variance(scores):
  average = grades_average(scores)
  variance = 0
  for score in scores:
    variance = variance+((average - score)**2)
  variance = variance / len(scores)
  return variance
print grades_variance(grades)

#The Standard Deviation
def grades_std_deviation(variance):
  return variance ** 0.5

variance = grades_variance(grades)
print grades_std_deviation(variance)

#Print out the following:
#all of the grades
#sum of grades
#average grade
#variance
#standard deviation
for grade in grades:
  print grade
print grades_sum(grades)
print grades_average(grades)
print grades_variance(grades)
print grades_std_deviation(grades_variance(grades))
```


```
#List comprehension
evens_to_50 = [i for i in range(51) if i % 2 == 0]
print evens_to_50

doubles_by_3 = [x * 2 for x in range(1, 6) if (x * 2) % 3 == 0]

# Complete the following line. Use the line above for help.
even_squares = [i * i for i in range(1,12) if (i ** 2) % 2 == 0]
print even_squares

cubes_by_four = [i**3 for i in range(1,11) if (i**3) % 4 == 0]
print cubes_by_four

#List slicing syntax
#[start:end:stride]
#start: describes where the slice starts
#end: describes where the slice ends
#stride: describes the space between items in the sliced list
#for example, a stride of 2 would select every other item from the original
#list to place in the sliced list.
l = [i ** 2 for i in range(1, 11)]
# Should be [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
print l[2:9:2]

#if you don't pass a particular index to the slice, Python will pick a default
#the default starting index is 0
#the default ending index is the end of the list
#the default stride is 1
my_list = range(1, 11) # List of numbers 1 - 10
# Add your code below!
print my_list[::2]
#code returns:
[1, 3, 5, 7, 9]

#Reversing a list
my_list = range(1, 11)
# Add your code below!
backwards = my_list[::-1]

#stride lenght
# a positive stride length traverses the list from left to right, and a negatie one
# traverses the list from right to left. Further, a stride lenght of 1 traverses the list
# by "ones," a stride length of 2 traverses the list "by twos".
to_one_hundred = range(101)
# Add your code below!
backwards_by_tens = to_one_hundred[::-10]
print backwards_by_tens

#1.Create a list, to_21, that's just the numbers from 1 to 21, inclusive.
#Create a second list, odds, that contains only the odd numbers in the to_21 list
# (1, 3, 5, and so on). Use list slicing for this one instead of a list comprehension.
#Finally, create a third list, middle_third, that's equal to the middle third of to_21,
# from 8 to 14, inclusive.
to_21 = range(1,22)
odds = to_21[0:22:2]
#the same but with list comprehension:
#odds = [i for i in to_21 if i % 1 != 0]
middle_third = to_21[7:14:]

#Anonymous functions
#functional programming
#typing
lambda x: x % 3 == 0
#is the same as:
def by_three(x):
	return x % 3 == 0

#when we pass lambda to the builtin function filter(), filter() uses the lambda to determine
#what to filter, and the second argument (my_list, which is just the numbers from 0-15) is 
#the list does the filtering on.
#1. Can you guess what the this code will print to the cosole?
my_list = range(16)
print filter(lambda x: x % 3 == 0, my_list)
```

```
#Lambda Syntax
#1. Fill in the first part of the filter function with a lambda. The lambda should
# ensure that only "Python" is returned by the filter. Fill in the second part of
# the filter function with languages, the list to filter.
languages = ["HTML", "JavaScript", "Python", "Ruby"]

# Add arguments to the filter()
print filter(lambda x: x == 'Python', languages)

#Create a list, squares, that consists of the squares of the numbers 1 to 10.
# A list comprehension could be useful here! Use filter() and a lambda expression
# to print out only the squares that are between 30 and 70 (inclusive).
squares = [i **2 for i in range(1,11)]
print filter(lambda x: x >=30 and x <=70, squares)

#Iterating over dictionaries
#Call the appropriate method on movies such that it will print out all the items (hint, hint)
#in the dictionary—that is, each key and each value.
movies = {
  "Monty Python and the Holy Grail": "Great",
  "Monty Python's Life of Brian": "Good",
  "Monty Python's Meaning of Life": "Okay"
}
print movies.items()
```


```
#Comprehending Comprehensions
#Use a list comprehension to create a list, threes_and_fives, that consists only of the
# numbers between 1 and 15 (inclusive) that are evenly divisible by 3 or 5.
threes_and_fives = [x for x in range(1,16) 
                    if x % 3 == 0 or x % 5 == 0]

#List Slicing
#The string in the editor is garbled in two ways:
#Our message is backwards.
#The letter we want is every other letter.
#Use list slicing to extract the message and save it to a variable called message.

garbled = "!XeXgXaXsXsXeXmX XtXeXrXcXeXsX XeXhXtX XmXaX XI"
message = garbled[::-1]
print message
message = garbled[::-2]
print message

#Create a new variable called message.
#Set it to the result of calling filter() with the appropriate lambda that will 
#filter out the "X"s. The second argument will be garbled.
#Finally, print your message to the console.
garbled = "IXXX aXXmX aXXXnXoXXXXXtXhXeXXXXrX sXXXXeXcXXXrXeXt mXXeXsXXXsXaXXXXXXgXeX!XX"
message = filter(lambda x: x != 'X', garbled)
print message
```


```
#Bitwise operations - BIT
#In the editor are the 6 basic bitwise operations. Click Run and see what the console
# prints out. All of them will be explained in due time!
print 5 >> 4  # Right Shift 	#returned 0
print 5 << 1  # Left Shift		#returned 10
print 8 & 5   # Bitwise AND 	#returned 0
print 9 | 4   # Bitwise OR 		#returned 13
print 12 ^ 42 # Bitwise XOR 	#returned 38
print ~88     # Bitwise NOT 	# returned -89
```

Lesson 10: the base 2 number system

When we count, we usually do it in base 10. That means that each place in a number can hold one 
of ten values, 0-9. In binary we count in base two, where each place can hold one of two values: 0 or 1.
The counting pattern is the same as in base 10 except when you carry over to a new column,
 you have to carry over every time a place goes higher than one (as opposed to higher than 9 in base 10).
For example, the numbers one and zero are the same in base 10 and base 2. But in base 2, once you get to the number 2
 you have to carry over the one, resulting in the representation "10". Adding one again results in "11" (3) and
adding one again results in "100" (4).
Contrary to counting in base 10, where each decimal place represents a power of 10, each place in a binary
number represents a power of two (or a bit). The rightmost bit is the 1's bit (two to the zero power), the next
 bit is the 2's bit (two to the first), then 4, 8, 16, 32, and so on.

The binary number '1010' is 10 in base 2 because the 8's bit and the 2's bit are "on":
```
8's bit  4's bit  2's bit  1's bit
    1       0       1      0 
    8   +   0    +  2   +  0  = 10
```

Take a look at the examples in the editor. Really try to understand this pattern before moving on.
Click Run when you are ready to continue.
```
print 0b1,    #1
print 0b10,   #2
print 0b11,   #3
print 0b100,  #4 - the 4's bit value is 4!
print 0b101,  #5 - 1 from the 1's bit value + 4 from the 4's bit value
print 0b110,  #6
print 0b111   #7
print "******"
print 0b1 + 0b11
print 0b11 * 0b11
```
I Can Count to 1100!
All right! Time to practice counting in binary.
To make sure you've got the hang of it, fill out the rest of the numbers all the way 
up to twelve. Please do not use the str() method or any other outside functions.
Here are a few numbers that will be good to know going forward -
2 ** 0 = 1
2 ** 1 = 2
2 ** 2 = 4
2 ** 3 = 8
2 ** 4 = 16
2 ** 5 = 32
2 ** 6 = 64
2 ** 7 = 128
2 ** 8 = 256
2 ** 9 = 512
2 ** 10 = 1024
You may recognize these numbers. Do you have a 32 or 64 bit system? Does your computer
have a 256GB hard drive? Computers think in binary!

Fill out the rest of the numbers with their corresponding binary values up to
twelve in the editor to the right, using the 0bxxx format.
one = 0b1
two = 0b10
three = 0b11
four = 0b100
five = 0b101
six = 0b110
seven = 0b111
eight = 0b1000
nine = 0b1001
ten = 0b1010
eleven = 0b1011
twelve = 0b1100


```
#int()'s Second Parameter
#Python has an int() function that you've seen a bit of already. It can turn non-integer input into an integer, like this:
#int("42")
## ==> 42
#What you might not know is that the int function actually has an optional second parameter.
#int("110", 2)
## ==> 6
#When given a string containing a number and the base that number is in, the function will return the value of that number converted to base ten.
#In the console are several different ways that you can use the int function's second parameter.On line 7, use int to print the base 10 equivalent of the binary number 11001001.
print int("1",2)
print int("10",2)
print int("111",2)
print int("0b100",2)
print int(bin(5),2)
# Print out the decimal equivalent of the binary 11001001.
print int("11001001",2)
```



Slide to the Left! Slide to the Right!
The next two operations we are going to talk about are the left and right shift bitwise operators. 
These operators work by shifting the bits of a number over by a designated number of slots.
The block below shows how these operators work on the bit level. Note that in the diagram, the shift is always a positive integer:
```
# Left Bit Shift (<<)  
0b000001 << 2 == 0b000100 (1 << 2 = 4)
0b000101 << 3 == 0b101000 (5 << 3 = 40)       

# Right Bit Shift (>>)
0b0010100 >> 3 == 0b000010 (20 >> 3 = 2)
0b0000010 >> 2 == 0b000000 (2 >> 2 = 0)

#Shift operations are similar to rounding down after dividing and multiplying by 2 (respectively) for every time you shift,
#but it's often easier just to think of it as shifting all the 1s and 0s left or right by the specified number of slots.
#Note that you can only do bitwise operations on an integer. Trying to do them on strings or floats will result in nonsensical output!

#Shift the variable shift_right to the right twice (>> 2) and shift the variable shift_left to the left twice (<< 2). 
#Try to guess what the printed output will be!
shift_right = 0b1100
shift_left = 0b1

# Your code here!
shift_right = shift_right >> 2
print shift_right
shift_left = shift_left <<2
print shift_left

print bin(shift_right)
print bin(shift_left)
```



A BIT of This AND That
The bitwise AND (&) operator compares two numbers on a bit level and returns a number where the bits of that number are turned
on if the corresponding bits of both numbers are 1. For example:
```
    a:   00101010   42
    b:   00001111   15       
===================
a & b:   00001010   10
```
As you can see, the 2's bit and the 8's bit are the only bits that are on in both a and b, so a & b only contains those bits. Note that using the & 
operator can only result in a number that is less than or equal to the smaller of the two values.
So remember, for every given bit in a and b:

0 & 0 = 0
0 & 1 = 0
1 & 0 = 0
1 & 1 = 1
Therefore,
0b111 (7) & 0b1010 (10) = 0b10
which equals two.

Print out the result of calling bin() on 0b1110 & 0b101. See if you can guess what the output will be!
```
print bin(0b1110 & 0b101
```

A BIT of This OR That
The bitwise OR (|) operator compares two numbers on a bit level and returns a number where the bits of that number are turned on if either of the corresponding bits of either number are 1. For example:
```
    a:  00101010  42
    b:  00001111  15       
================
a | b:  00101111  47
```
Note that the bitwise | operator can only create results that are greater than or equal to the larger of the two integer inputs.
So remember, for every given bit in a and b:
0 | 0 = 0
0 | 1 = 1 
1 | 0 = 1
1 | 1 = 1
Meaning
110 (6) | 1010 (10) = 1110 (14)

For practice, print out the result of using | on 0b1110 and 0b101 as a binary string. Try to do it on your own without using the | operator if you can help it.
```
print bin(0b1110 | 0b101)
```

This XOR That?
The XOR (^) or exclusive or operator compares two numbers on a bit level and returns a number where the bits of that number are turned on if either of the corresponding bits of the two numbers are 1, but not both.

    a:  00101010   42
    b:  00001111   15       
================
a ^ b:  00100101   37
Keep in mind that if a bit is off in both numbers, it stays off in the result. Note that XOR-ing a number with itself will always result in 0.
So remember, for every given bit in a and b:

0 ^ 0 = 0
0 ^ 1 = 1
1 ^ 0 = 1
1 ^ 1 = 0
Therefore:
111 (7) ^ 1010 (10) = 1101 (13)

Instructions
1. For practice, print the result of using ^ on 0b1110 and 0b101 as a binary string. Try to do it on your own without using the ^ operator.
print bin(0b1110 ^ 0b101)

See? This is NOT That Hard!
The bitwise NOT operator (~) just flips all of the bits in a single number. What this actually means to the computer is actually very complicated, so we're not going to get into it. 
Just know that mathematically, this is equivalent to adding one to the number and then making it negative.
And with that, you've seen all of the basic bitwise operators! We'll see what we can do with these in the next section.
Instructions
1. Click Run and observe what the console prints out.
```
print ~1
print ~2
print ~3
print ~42
print ~123
```

The Man Behind the Bit Mask
A bit mask is just a variable that aids you with bitwise operations. A bit mask can help you turn specific bits on, turn others off, or just collect data from an integer about which bits are on or off.
```
num  = 0b1100
mask = 0b0100
desired = num & mask
if desired > 0:
  print "Bit was on"
```
In the example above, we want to see if the third bit from the right is on.

First, we first create a variable num containing the number 12, or 0b1100.
Next, we create a mask with the third bit on.
Then, we use a bitwise-and operation to see if the third bit from the right of num is on.
If desired is greater than zero, then the third bit of num must have been one.
Instructions
1. Define a function, check_bit4, with one argument, input, an integer.
It should check to see if the fourth bit from the right is on.
If the bit is on, return "on" (not print!)
If the bit is off, return "off".
Check the Hint for some examples!
```
def check_bit4(input):
  mask = 0b1000
  desired = input & mask
  if desired > 0:
    return "on"
  else:
    return "off"
```

Turn It On
You can also use masks to turn a bit in a number on using |. For example, let's say I want to make sure the rightmost bit of number a is turned on. I could do this:
```
a = 0b110 # 6
mask = 0b1 # 1
desired =  a | mask # 0b111, or 7
```
Using the bitwise | operator will turn a corresponding bit on if it is off and leave it on if it is already on.
Instructions
1. In the editor is a variable, a. Use a bitmask and the value a in order to achieve a result where the third bit from the right of a is turned on. Be sure to print your answer as a bin() string!
```
a = 0b10111011
mask = 0b10111111

desired = a | mask
print bin(desired)
```

Just Flip Out
Using the XOR (^) operator is very useful for flipping bits. Using ^ on a bit with the number one will return a result where that bit is flipped.
For example, let's say I want to flip all of the bits in a. I might do this:
```
a = 0b110 # 6
mask = 0b111 # 7
desired =  a ^ mask # 0b1
```

Instructions
1. In the editor is the 8 bit variable a. Use a bitmask and the value a in order to achieve a result where all of the bits in a are flipped. Be sure to print your answer as a bin() string!
```
a = 0b11101110
mask = 0b11111111

desired = a ^ mask
print bin(desired)
```

Slip and Slide
Finally, you can also use the left shift (<<) and right shift (>>) operators to slide masks into place.
```
a = 0b101 
# Tenth bit mask
mask = (0b1 << 9)  # One less than ten 
desired = a ^ mask
```
Let's say that I want to turn on the 10th bit from the right of the integer a.
Instead of writing out the entire number, we slide a bit over using the << operator.
We use 9 because we only need to slide the mask nine places over from the first bit to reach the tenth bit.
Instructions
1. Define a function called flip_bit that takes the inputs (number, n).
Flip the nth bit (with the ones bit being the first bit) and store it in result.
Return the result of calling bin(result).
```
def flip_bit(number, n):
  bit_to_flip = 0b1 << (n -1)
  result = number ^ bit_to_flip
  return bin(result)
```


Outside the Animal class definition, create a variable named zebra and set it equal to Animal("Jeffrey").
Then print out zebra's name.
```
class Animal(object):
  """A class that tells you about animals!"""
  def __init__(self, name):
    """init is the function that boots up each object the class creates"""
    self.name = name

zebra = Animal("Jeffrey")
print zebra.name
```

Check out the examples in the editor. See how __init__() "boots up" each object to expect a name and an age, then uses self.name and self.age to assign those names and ages to each object? Add a third attribute, is_hungry to __init__(), and click Run to see the results.
Class definition
```
class Animal(object):
  """Makes cute animals."""
  # For initializing our instance objects
  def __init__(self, name, age, is_hungry):
    self.name = name
    self.age = age
    self.is_hungry = is_hungry

    '''Note that self is only used in the __init__()
    function definition; we don't need to pass it
    to our instance objects.'''

zebra = Animal("Jeffrey", 2, True)
giraffe = Animal("Bruce", 1, False)
panda = Animal("Chad", 7, True)

print zebra.name, zebra.age, zebra.is_hungry
print giraffe.name, giraffe.age, giraffe.is_hungry
print panda.name, panda.age, panda.is_hungry
```


Check out the code in the editor. Note that each individual animal gets its own name and age (since they're all initialized individually), but they all have access to the member variable is_alive, since they're all members of the Animal class. Click Run to see the output!
```
class Animal(object):
  """Makes cute animals."""
  is_alive = True
  def __init__(self, name, age):
    self.name = name
    self.age = age

zebra = Animal("Jeffrey", 2)
giraffe = Animal("Bruce", 1)
panda = Animal("Chad", 7)

print zebra.name, zebra.age, zebra.is_alive
print giraffe.name, giraffe.age, giraffe.is_alive
print panda.name, panda.age, panda.is_alive
```



Add a method, description, to your Animal class. Using two separate print statements, it should print out the name and age of the animal it's called on. Then, create an instance of Animal, hippo (with whatever name and age you like), and call its description method.
```
class Animal(object):
  """Makes cute animals."""
  is_alive = True
  def __init__(self, name, age):
    self.name = name
    self.age = age
  # Add your method here!
  def description(self):
    print self.name
    print self.age
hippo = Animal("George", 12)
hippo.description()
```


After line 3, add a second member variable called health that contains the string "good".
Then, create two new Animals: sloth and ocelot. (Give them whatever names and ages you like.)
Finally, on three separate lines, print out the health of your hippo, sloth, and ocelot.
```
class Animal(object):
  """Makes cute animals."""
  is_alive = True
  health = "good"
  def __init__(self, name, age):
    self.name = name
    self.age = age
  # Add your method here!
  def description(self):
    print self.name
    print self.age

hippo = Animal("George", 12)
hippo.description()
sloth = Animal("Deise", 32)
ocelot = Animal("Robert", 55)

print hippo.health
print sloth.health
print ocelot.health
```


Create an instance of ShoppingCart called my_cart. Initialize it with any values you like, then use the add_item method to add an item to your cart.
```
class ShoppingCart(object):
  """Creates shopping cart objects
  for users of our fine website."""
  
  def __init__(self, customer_name):
    self.customer_name = customer_name
    self.items_in_cart = {}
  def add_item(self, product, price):
    """Add product to the cart."""
    if not product in self.items_in_cart:
      self.items_in_cart[product] = price
      print product + " added."
    else:
      print product + " is already in the cart."

  def remove_item(self, product):
    """Remove product from the cart."""
    if product in self.items_in_cart:
      del self.items_in_cart[product]
      print product + " removed."
    else:
      print product + " is not in the cart."
my_cart = ShoppingCart("Deise")
my_cart.add_item("potato", 10)
```

Check out the code in the editor. We've defined a class, Customer, as well as a ReturningCustomer class that inherits from Customer. Note that we don't define the display_cart method in the body of ReturningCustomer, but it will still have access to that method via inheritance. Click Run to see for yourself!
```
class Customer(object):
  """Produces objects that represent customers."""
  def __init__(self, customer_id):
    self.customer_id = customer_id

  def display_cart(self):
    print "I'm a string that stands in for the contents of your shopping cart!"

class ReturningCustomer(Customer):
  """For customers of the repeat variety."""
  def display_order_history(self):
    print "I'm a string that stands in for your order history!"

monty_python = ReturningCustomer("ID: 12345")
monty_python.display_cart()
monty_python.display_order_history()
```


On lines 1-4, we've created a class named Shape.

Create your own class, Triangle, that inherits from Shape, like this:
```
class Triangle(Shape):
#code goes here
Inside the Triangle class, write an __init__() function that takes four arguments: self, side1, side2, and side3.
Inside the __init__() function, set self.side1 = side1, self.side2 = side2, and self.side3 = side3.
Click "Stuck? Get a hint!" for an example.
class Shape(object):
  """Makes shapes!"""
  def __init__(self, number_of_sides):
    self.number_of_sides = number_of_sides

# Add your Triangle class below!
class Triangle(Shape):
  """I think it makes triangles."""
  def __init__(self, side1, side2, side3):
    self.side1 = side1
    self.side2 = side2
    self.side3 = side3
```


Create a new class, PartTimeEmployee, that inherits from Employee.
Give your derived class a calculate_wage method that overrides Employee's. It should take self and hours as arguments.
Because PartTimeEmployee.calculate_wage overrides Employee.calculate_wage, it still needs to set self.hours = hours.
It should return the part-time employee's number of hours worked multiplied by 12.00 (that is, they get $12.00 per hour instead of $20.00).
```
class Employee(object):
  """Models real-life employees!"""
  def __init__(self, employee_name):
    self.employee_name = employee_name

  def calculate_wage(self, hours):
    self.hours = hours
    return hours * 20.00

# Add your code below!
class PartTimeEmployee(Employee):
  def calculate_wage(self, hours):
    self.hours = hours
    return hours * 12.00
```



This Looks Like a Job For...
On the flip side, sometimes you'll be working with a derived class (or subclass) and realize that you've overwritten a method or attribute defined in that class' base class (also called a parent or superclass) that you actually need. Have no fear! You can directly access the attributes or methods of a superclass with Python's built-in super call.
The syntax looks like this:
```
class Derived(Base):
  def m(self):
    return super(Derived, self).m()
```
Where m() is a method from the base class.

First, inside your PartTimeEmployee class:
Add a new method called full_time_wage with the arguments self and hours.
That method should return the result of a super call to the calculate_wage method of PartTimeEmployee's parent class. Use the example above for help.
Then, after your class:
Create an instance of the PartTimeEmployee class called milton. Don't forget to give it a name.
Finally, print out the result of calling his full_time_wage method. You should see his wage printed out at $20.00 per hour! (That is, for 10 hours, the result should be 200.00.)
```
class Employee(object):
  """Models real-life employees!"""
  def __init__(self, employee_name):
    self.employee_name = employee_name

  def calculate_wage(self, hours):
    self.hours = hours
    return hours * 20.00

Add your code below!
class PartTimeEmployee(Employee):
  def calculate_wage(self, hours):
    self.hours = hours
    return hours * 12.00
  def full_time_wage(self, hours):
    return super(PartTimeEmployee, self).calculate_wage(hours)
milton = PartTimeEmployee("milton")
print milton.full_time_wage
```


Instructions
1.Inside the Triangle class:
Create a variable named number_of_sides and set it equal to 3.
Create a method named check_angles. The sum of a triangle's three angles should return True if the sum of self.angle1, self.angle2, and self.angle3 is equal 180, and False otherwise.
```
class Triangle(object):
  def __init__(self, angle1, angle2, angle3):
    self.angle1 = angle1
    self.angle2 = angle2
    self.angle3 = angle3
  number_of_sides = 3
  def check_angles(self):
    if (self.angle1 + self.angle2 + self.angle3 == 180):
      return True
    else:
      return False
```    

Instructions
1. Create a variable named my_triangle and set it equal to a new instance of your Triangle class. Pass it three angles that sum to 180 (e.g. 90, 30, 60).
Print out my_triangle.number_of_sides
Print out my_triangle.check_angles()
```
class Triangle(object):
  def __init__(self, angle1, angle2, angle3):
    self.angle1 = angle1
    self.angle2 = angle2
    self.angle3 = angle3
  number_of_sides = 3
  def check_angles(self):
    if (self.angle1 + self.angle2 + self.angle3 == 180):
      return True
    else:
      return False
    
my_triangle = Triangle(90, 30, 60)
print my_triangle.number_of_sides
print my_triangle.check_angles()
```


Create a class named Equilateral that inherits from Triangle.
Inside Equilateral, create a member variable named angle and set it equal to 60.
Create an __init__() function with only the parameter self, and set self.angle1, self.angle2, and self.angle3 equal to self.angle (since an equilateral triangle's angles will always be 60˚).
```
class Triangle(object):
  def __init__(self, angle1, angle2, angle3):
    self.angle1 = angle1
    self.angle2 = angle2
    self.angle3 = angle3
  number_of_sides = 3
  def check_angles(self):
    if (self.angle1 + self.angle2 + self.angle3 == 180):
      return True
    else:
      return False
    
my_triangle = Triangle(90, 30, 60)
print my_triangle.number_of_sides
print my_triangle.check_angles()

class Equilateral(Triangle):
  angle = 60
  def __init__(self):
    self.angle1 = self.angle
    self.angle2 = self.angle
    self.angle3 = self.angle
```


Class basics
Classes can be very useful for storing complicated objects with their own methods and variables. Defining a class is much like defining a function, but we use the class keyword instead. We also use the word object in parentheses because we want our classes to inherit the object class. This means that our class has all the properties of an object, which is the simplest, most basic class. Later we'll see that classes can inherit other, more complicated classes. An empty class would look like this:
```
class ClassName(object):
  # class statements go here
```

Create an instance of a class
We can use classes to create new objects, which we say are instances of those classes.
Creating a new instance of a class is as easy as saying:
newObject = ClassName()

Instructions
1. Inside your Car class, replace the pass statement with a new member variable named condition and give it an initial value of the string "new".
```
class Car(object):
  condition = "new"
my_car = Car()
```

Calling class member variables
Each class object we create has its own set of member variables. Since we've created an object my_car that is an instance of the Car class, my_car should already have a member variable named condition. This attribute gets assigned a value as soon as my_car is created.

Instructions
1. At the end of your code, use a print statement to display the condition of my_car.
```
class Car(object):
  condition = "new"
my_car = Car()
print my_car.condition
```

Initializing a class
There is a special function named __init__() that gets called whenever we create a new instance of a class. It exists by default, even though we don't see it. However, we can define our own __init__() function inside the class, overwriting the default version. We might want to do this in order to provide more input variables, just like we would with any other function.
The first argument passed to __init__() must always be the keyword self - this is how the object keeps track of itself internally - but we can pass additional variables after that.
In order to assign a variable to the class (creating a member variable), we use dot notation. For instance, if we passed newVariable into our class, inside the __init__() function we would say:
self.new_variable = new_variable

1.Define the __init__() function of the Car class to take four inputs: self, model, color, and mpg. Assign the last three inputs to member variables of the same name by using the self keyword.
Then, modify the object my_car to provide the following inputs at initialization:
```
model = "DeLorean"
color = "silver"
mpg = 88
```

You don't need to include the self keyword when you create an instance of a class, because self gets added to the beginning of your list of inputs automatically by the class definition.
```
class Car(object):
  condition = "new"
  def __init__(self, model, color, mpg):
    self.model = model
    self.color = color
    self.mpg = mpg
    
my_car = Car("DeLorean", "silver", 88)
print my_car.condition
```

Referring to member variables
Calling class member variables works the same whether those values are created within the class (like our car's condition) or values are passed into the new object at initialization. We use dot notation to access the member variables of classes since those variables belong to the object.
For instance, if we had created a member variable named new_variable, a new instance of the class named new_object could access this variable by saying:
```
new_object.new_variable
```
Instructions
1. Now that you've created my_car print its member variables:
First print the model of my_car. Click "Stuck? Get a hint!" for an example.
Then print out the color of my_car.
Then print out the mpg of my_car.
```
class Car(object):
  condition = "new"
  def __init__(self, model, color, mpg):
    self.model = model
    self.color = color
    self.mpg = mpg
    
my_car = Car("DeLorean", "silver", 88)
print my_car.model
print my_car.color
print my_car.mpg
```

Creating class methods
Besides member variables, classes can also have their own methods. For example:
```
class Square(object):
  def __init__(self, side):
    self.side = side

  def perimeter(self):
    return self.side * 4
```

The perimeter() class method is identical to defining any other function, except that it is written inside of the Square class definition.
Just like when we defined __init__(), you need to provide self as the first argument of any class method.
1. Inside the Car class, add a method named display_car to Car that will reference the Car's member variables to return the string, "This is a [color] [model] with [mpg] MPG." You can use the str() function to turn your mpg into a string when creating the display string.
Replace the individual print statements with a single print command that displays the result of calling my_car.display_car()
```
class Car(object):
  condition = "new"
  def __init__(self, model, color, mpg):
    self.model = model
    self.color = color
    self.mpg   = mpg
  def display_car(self):
    print "This is a %s %s with %s MPG." % (self.color, self.model, self.mpg)

my_car = Car("DeLorean", "silver", 88)

print my_car.display_car()
```

Modifying member variables
We can modify variables that belong to a class the same way that we initialize those member variables. This can be useful when we want to change the value a variable takes on based on something that happens inside of a class method.

Instructions
1. Inside the Car class, add a method drive_car that sets self.condition to the string "used".
Remove the call to my_car.display_car() and instead print only the condition of your car.
Then drive your car by calling the drive_car method.
Finally, print the condition of your car again to see how its value changes.
```
class Car(object):
  condition = "new"
  def __init__(self, model, color, mpg):
    self.model = model
    self.color = color
    self.mpg   = mpg
  def display_car(self):
    print "This is a %s %s with %s MPG." % (self.color, self.model, self.mpg)
  def drive_car(self):
    self.condition = "used"
    print self.condition

my_car = Car("DeLorean", "silver", 88)

print my_car.condition
print my_car.drive_car()
print my_car.condition
```

Inheritance
One of the benefits of classes is that we can create more complicated classes that inherit variables or methods from their parent classes. This saves us time and helps us build more complicated objects, since these child classes can also include additional variables or methods.
We define a "child" class that inherits all of the variables and functions from its "parent" class like so:
class ChildClass(ParentClass):
  # new variables and functions go here
Normally we use object as the parent class because it is the most basic type of class, but by specifying a different class, we can inherit more complicated functionality.
Instructions
1. Create a class ElectricCar that inherits from Car. Give your new class an __init__() method of that includes a battery_type member variable in addition to the model, color and mpg.
Then, create an electric car named my_car with a "molten salt" battery_type. Supply values of your choice for the other three inputs (model, color and mpg).
```
class Car(object):
  condition = "new"
  def __init__(self, model, color, mpg):
    self.model = model
    self.color = color
    self.mpg   = mpg
  def display_car(self):
    print "This is a %s %s with %s MPG." % (self.color, self.model, self.mpg)
  def drive_car(self):
    self.condition = "used"
    print self.condition

class ElectricCar(Car):
    def __init__(self, battery_type, model, color, mpg):
      self.battery_type = battery_type
      self.model = model
      self.color = color
      self.mpg   = mpg

my_car = Car("DeLorean", "silver", 88)
print my_car.condition
print my_car.drive_car()
print my_car.condition
my_car = ElectricCar("molten salt", "model", "black", "90")
```

Overriding methods
Since our ElectricCar is a more specialized type of Car, we can give the ElectricCar its own drive_car() method that has different functionality than the original Car class's.
1. Inside ElectricCar add a new method drive_car that changes the car's condition to the string "like new".
Then, outside of ElectricCar, print the condition of my_car
Next, drive my_car by calling the drive_car function
Finally, print the condition of my_car again
```
class Car(object):
  condition = "new"
  def __init__(self, model, color, mpg):
    self.model = model
    self.color = color
    self.mpg   = mpg
  def display_car(self):
    print "This is a %s %s with %s MPG." % (self.color, self.model, self.mpg)
  def drive_car(self):
    self.condition = "used"
    print self.condition

class ElectricCar(Car):
    def __init__(self, battery_type, model, color, mpg):
      self.battery_type = battery_type
      self.model = model
      self.color = color
      self.mpg   = mpg
    def drive_car(self):
      self.condition = "like new"
      print self.condition


my_car = Car("DeLorean", "silver", 88)
print my_car.condition
print my_car.drive_car()
print my_car.condition
my_car = ElectricCar("molten salt", "model", "black", "90")
print my_car.condition
print my_car.drive_car()
print my_car.condition
```

Building useful classes
Chances are, you won't be designing Car classes in the real world anytime soon. Usually, classes are most useful for holding and accessing abstract collections of data.
One useful class method to override is the built-in __repr__() method, which is short for representation; by providing a return value in this method, we can tell Python how to represent an object of our class (for instance, when using a print statement).
1. Define a Point3D class that inherits from object
Inside the Point3D class, define an __init__() function that accepts self, x, y, and z, and assigns these numbers to the member variables self.x, self.y, self.z
Define a __repr__() method that returns "(%d, %d, %d)" % (self.x, self.y, self.z). This tells Python to represent this object in the following format: (x, y, z).
Outside the class definition, create a variable named my_point containing a new instance of Point3D with x=1, y=2, and z=3.
Finally, print my_point.
```
class Point3D(object):
  def __init__(self, x, y, z):
    self.x = x
    self.y = y
    self.z = z
  def __repr__(self):
    return "(%d, %d, %d)" % (self.x, self.y, self.z)
my_point = Point3D(1, 2, 3)
print my_point
```

FILE INPUT/OUTPUT
See It to Believe It
Until now, the Python code you've been writing comes from one source and only goes to one place: you type it in at the keyboard and its results are displayed in the console. But what if you want to read information from a file on your computer, and/or write that information to another file?
This process is called file I/O (the "I/O" stands for "input/output"), and Python has a number of built-in functions that handle this for you.
Check out the code in the editor to the right.
Instructions
1. Click Run! You just wrote all the contents of my_list to a text file called output.txt.
```
my_list = [i ** 2 for i in range(1, 11)]
# Generates a list of squares of the numbers 1 - 10

f = open("output.txt", "w")

for item in my_list:
  f.write(str(item) + "\n")

f.close()
```

The open() Function
Let's walk through the process of writing to a file one step at a time.
The first code that you saw executed in the previous exercise was this:
f = open("output.txt", "w")
This told Python to open output.txt in "w" mode ("w" stands for "write"). We stored the result of this operation in a file object, f.
Doing this opens the file in write-mode and prepares Python to send data into the file.
1. Create a variable, my_file, and set it equal to calling the open() function on output.txt. In this case, pass "r+" as a second argument to the function so the file will allow you to read and write to it! (See the Hint for details.)
Hint:
You can open files in any of the following modes:
write-only mode ("w")
read-only mode ("r")
read and write mode ("r+")
append mode ("a"), which adds any new data you write to the file to the end of the file.


Writing
Good work! Now it's time to write some data to a new .txt file.
We added the list comprehension from the first exercise to the code in the editor. Our goal in this exercise will be to write each element of that list to a file called output.txt. The output.txt file that you write to will be created in your current folder - for simplicity, the folder has been hidden. output.txt will list each number on its own line.
We can write to a Python file like so:
my_file.write("Data to be written")
The .write() method takes a string argument, so we'll need to do a few things here:
You must close the file. You do this simply by calling my_file.close() (we did this for you in the last exercise). If you don't close your file, Python won't write to it properly. From here on out, you gotta close your files!
1. Iterate over my_list to get each value.
Use my_file.write() to write each value to a text file called, output.txt.
Make sure to call str() on the iterating data so .write() will accept it.
Make sure to add a newline (+ "\n") after each element to ensure each will appear on its own line.
Use my_file.close() to close the file when you're done.
Passing the exercise means that you successfully wrote my_list to output.txt!
```
my_list = [i ** 2 for i in range(1, 11)]

my_file = open("output.txt", "w")

# Add your code below!
for i in my_list:
  my_file.write(str(i) + "\n") 
my_file.close()
```

Reading
Excellent! You're a pro.
Finally, we want to know how to read from our output.txt file. As you might expect, we do this with the read() function, like so:
print my_file.read()
Instructions
1. Declare a variable, my_file, and set it equal to the file object returned by calling open() with both "output.txt" and "r".
Next, print the result of using .read() on my_file, like the example above.
Make sure to .close() your file when you're done with it! All kinds of doom will happen if you don't.
```
my_file = open("output.txt", "r")
print my_file.read()
my_file.close()
```

Reading Between the Lines
What if we want to read from a file line by line, rather than pulling the entire file in at once. Thankfully, Python includes a .readline() method that does exactly that.
If you open a file and call .readline() on the file object, you'll get the first line of the file; subsequent calls to .readline() will return successive lines.
Instructions
1. Declare a new variable my_file and store the result of calling open() on the "text.txt" file in "r"ead-only mode.
On three separate lines, print out the result of calling my_file.readline(). See how it gets the next line each time?
Don't forget to .close() your file when you're done with it!
```
my_file = open("text.txt", "r")
print my_file.readline()
print my_file.readline()
print my_file.readline()
my_file.close()
```

PSA: Buffering Data
We keep telling you that you always need to close your files after you're done writing to them. Here's why!
During the I/O process, data is buffered: this means that it is held in a temporary location before being written to the file.
Python doesn't flush the buffer—that is, write data to the file—until it's sure you're done writing. One way to do this is to close the file. If you write to a file without closing, the data won't make it to the target file.
Instructions
1. Check out our extremely bad code in the editor. Click Run—you'll note that our read_file.read() didn't read any data back!
Add a write_file.close() call after writing to the file but before reading it.
Add a read_file.close() call after the print read_file.read() line
Run the code again.
This time, you'll see the data come through!
```
# Use a file handler to open a file for writing
write_file = open("text.txt", "w")

# Open the file for reading
read_file = open("text.txt", "r")

# Write to the file
write_file.write("Not closing files is VERY BAD.")
write_file.close()


# Try to read from the file
print read_file.read()
read_file.close() 
```

The 'with' and 'as' Keywords
Programming is all about getting the computer to do the work. Is there a way to get Python to automatically close our files for us?
Of course there is. This is Python.
You may not know this, but file objects contain a special pair of built-in methods: __enter__() and __exit__(). The details aren't important, but what is important is that when a file object's __exit__() method is invoked, it automatically closes the file. How do we invoke this method? With with and as.
The syntax looks like this:
with open("file", "mode") as variable:
  # Read or write to the file
Instructions
1. Check out the example in the editor. Note that we don't explicitly close() our file, and remember that if we don't close a file, our data will get stuck in the buffer. Click Run!
Success! is written to a file called text.txt.
```
with open("text.txt", "w") as textfile:
  textfile.write("Success!")
```

Try It Yourself
It worked! Our Python program successfully wrote to text.txt.
Instructions
1. Now you try: write any data you like to a file called text.txt using with...as. Give your file object the usual name: my_file.
```
with open("text.txt", "w") as my_file:
  my_file.write("I am almost finishing this course!")
```

Case Closed?
Finally, we'll want a way to test whether a file we've opened is closed. Sometimes we'll have a lot of file objects open, and if we're not careful, they won't all be closed. How can we test this?
```
f = open("bg.txt")
f.closed
# False
f.close()
f.closed
```
True
Python file objects have a closed attribute which is True when the file is closed and False otherwise.
By checking file_object.closed, we'll know whether our file is closed and can call close() on it if it's still open.
1. Below your with...as code, do two things:
Check if the file is not closed.
If that's the case, call .close() on it.
(You don't need an else here, since your if statement should do nothing if closed is True.)
After your if statement, print out the value of my_file.closed to make sure your file is really closed.
```
with open("text.txt", "w") as my_file:
  my_file.write("I am almost finishing this course!")
  if my_file.closed == False:
    my_file.close()
  print my_file.closed
```

