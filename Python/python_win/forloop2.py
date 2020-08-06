
emp={"Male":["Test1","Test2","Test3"],
     "Female":["FTest1","FTest2","Ftest3"]}
print(emp)
for key in emp.keys():
    print(key)
    print(emp[key])
    for name in emp[key]:
        if("F" in name):
            print(name)