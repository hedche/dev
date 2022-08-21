#!/usr/bin/python3

# This script will take 2 integers as an input and add all the even numbers in between inclusively

num1 = int(input("Please enter the first integer:\n"))
num2 = int(input("Please enter the second integer:\n"))

#Would be good to check if both vars are in fact integers 
#if isinstance(num1, int) and isinstance(num2, int): 

result = 0
start = min(num1,num2)
end = max(num1,num2)

#First lets check if they equal each other and are even
if (num1 % 2) == 0 and (num2 % 2) == 0:
    if num1 == num2:
        print("Result is: {}".format(num1))
        quit()

#Now we loop through adding all even numbers
for i in range(min(num1,num2),(max(num1,num2)+1),1):
    if (i % 2) == 0:
        result += i

# Now we print the result
print("\nResult is: {}".format(result))
