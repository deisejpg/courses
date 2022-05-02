# in this script I learned more about read(), readline(), and open()
# I also learned for the first time about the seek()

from sys import argv

script, input_file = argv

def print_all(f):
	print(f.read())

# the seek function deals with bytes, not lines
# the code seek(0) move the file to the 0 byte in the file
def rewind(f):
	f.seek(0)

# here you use line_count and f.readline to read the file when 
# running the function print_a_line
def print_a_line(line_count, f):
	print(line_count, f.readline())

# here you use the function open() to open the input file typed
# after the name of the script in the command line. Save it in 
# the object 'current_file'
current_file = open(input_file)

print("First let's print the whole file:\n")

# use the the first function defined to print the file content
print_all(current_file)

print("Now let's rewind, kind of like a tape.")

rewind(current_file)

print("Let's print three lines.")

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
