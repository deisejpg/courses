import mystuff

mystuff.apple()
print(mystuff.tangerine)

mystuff = {'apple' : "I AM APPLES!"}
print(mystuff['apple'])

mystuff['apple'] # get apple dict
mystuff.apple() # get apple from the module
mystuff.tangerine # same thing, it's just a variable

class MyStuff(object):

	def __init__(self):
		self.tangerine = "And now a thousand years between"

	def apple(self):
		print("I AM CLASSY APPLES!")

