#f1=open("test.txt","r")
#if f1:
 #   print("File opened successfully")
#content=f1.readline()
#print(content)
#f1.close()

f2=open("test.txt","a")
f2.write("eeteteteqtqertqetqe")
f2=open("test.txt","r")
content=f2.readline()
print(content)
f2.close()

python