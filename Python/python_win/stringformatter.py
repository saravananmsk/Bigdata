# to print username and host name  from given mail id
emailid=input("Enter the mail id:")
print(emailid)
username=emailid[:emailid.index("@"):]
print(username)
host=emailid[emailid.index("@")+1:emailid.index(".")]
print(host)
output="Username is {1} and host name is {0}"
print(output.format(host,username))