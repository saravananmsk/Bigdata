# -*- coding: utf-8 -*-
a=[]
b=int(input("Enter the number\n"))
for i in range(1, b+1):
    print(i)
    a.append(i)
a.sort()
print(a)
print(a[b-1])
