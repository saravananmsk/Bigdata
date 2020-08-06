numbers=[x for x in range(1,11)]
print(numbers)
numbers=[x for x in range(1,51) if(x%2!=0)]
print(numbers)
numbers=[x for x in range(1,51) if(x%2==0)]
print(numbers)
names=["Test1","Test2","Test3"]
output=[[len(d),d.upper(),d.lower()] for d in names]
print(output)