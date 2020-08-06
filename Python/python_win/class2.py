class A:
    def F1(self):
        print("this is function1")
    def F2(self):
        print("Bird")
class B(A):
    def F3(self):
        print("this is function3")
    def F2(self):
        print("Car")

bclass=B()
bclass.F3()
bclass.F2()
bclass.F1()