try:
    Value=int(input("Enter value between 1  and 10:"))
except (ValueError, KeyboardInterrupt):
    print("you must enter number between 1 and 10:")
else:
    if (Value > 0) and (Value <=10):
        print("you typed value" , Value)
    else:
        print("The value you entered is incorrect")
