username=input("Enter user name:").strip()
password=input("Enter password:").strip()

def loginValidation(uname,upass):
    print("User login details:",username,password)
    if(username=="admin" and password=="admin"):
        return "Success"
    else :
        return "Failure"
x=loginValidation(uname=username,upass=password)
print(x)