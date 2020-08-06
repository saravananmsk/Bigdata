class car:
    def __init__(self):
        self.__updatesoftware()
    def drive(self):
        print("driving")
    def __updatesoftware(self):
        print("Updating software")

car1=car()
car1.drive()



class car2:
    __maxspeed=0
    __name=""
    def __init__(self):
        self.__maxspeed=200
        self.__name="Supercar"
    def drive(self):
        print("Driving")
    def setspeed(self,speed):
        self.__maxspeed=speed
        print(self.__maxspeed)
redcar=car2()
redcar.drive()
redcar.setspeed(100)