class parrot:
   def fly(self):
       print("Parrot can fly")
   def swim(self):
        print("Parrot can't swim")
class penguin:
    def fly(self):
        print("Penguin can't fly")

    def swim(self):
        print("Penguin can swim")

def flytest(obj):
    obj.fly()

def swimtest(obj):
    obj.swim()

parr=parrot()
peng=penguin()

flytest(parr)
flytest(peng)

print("==================================================")

swimtest(parr)
swimtest(peng)
