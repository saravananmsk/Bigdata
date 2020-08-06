import sys
a=100

try:
    i=10
    i=i/0
    print(i)
except:
    print("Error occurred ",sys.exc_info()[0])
finally:
    c=a+20
    print(c)
