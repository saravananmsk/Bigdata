class Employee:
        name='msk'
        age=34
        def sayHello(self):
            print("Welcome to python")

emp= Employee()
print("my name is {} and my age is {}".format(emp.name,emp.age))
emp.sayHello()


class Employee1:
    def __init__(self,name,age):
        self.name =name
        self.age =age

    def sayHello(self):
        print("Welcome to python")
emp1 = Employee1("MSK",34)
print("my name is {} and my age is {}".format(emp1.name, emp1.age))
emp1.age=45
print("my name is {} and my age is {}".format(emp1.name, emp1.age))
emp.sayHello()


