# This is simple calculator program using python
def add(x,y):
    return x + y

def sub(x,y):
	return x-y

def mul(x,y):
	return x*y

def div(x,y):
	return x/y

print ("Enter your choice: ")
print ("1 for Add numbers")
print ("2 for Subtract numbers")
print ("3 for Multiply numbers")
print ("4 for Divide numbers")

c = int(input("Enter your choice: "))

a = int(input("Enter the first number "))

b = int(input("Enter the second number "))

print("the value of c is",c)

if c == 1:
	
	print(a ,"+", b ,"=",add(a,b))
elif c == 2:
	
	print(a ,"-", b ,"=",sub(a,b))
elif c == 3:
	
	print(a ,"*", b ,"=",mul(a,b))
elif c == 4:
	
	print(a ,"/", b ,"=",div(a,b))
	
else:
   print("Invalid input")
