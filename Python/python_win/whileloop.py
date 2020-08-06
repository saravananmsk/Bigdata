#whileloop example
#while False:
 #   print (1)

#while 5<10:
 #    print("Hi");
emp=[]
listsize=input("enter the size of the list")
while len(emp) < int(listsize):
    name=input("enter employee name")
    emp.append(name)
print("Emp list is full")
print(emp)