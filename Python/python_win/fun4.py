a=100

def funA():
    print(a)

def funB():
    global a
    a=125
    print (a)

funA()
funB()
print(a)
