EnterNumber1=int(input("EnetNumber1 = "))
EnterNumber2=int(input("EnterNumber2 = "))
EnterOperator=str(input("Perform Operation = "))
def add(EnterNumber1,EnterNumber2):
    return EnterNumber1+EnterNumber2
def sub(n1,n2):
    return n1-n2

if EnterOperator=='+':
    addition=add(EnterNumber1,EnterNumber2)
    print("Result={0}".format(addition))
elif EnterOperator=="-":
    subtraction=sub(EnterNumber1,EnterNumber2)
    print("Result={0}".format(subtraction))
    