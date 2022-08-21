#!/usr/bin/python3

# This script will take a text file as an input and will get every integer from it line by line and point out the most common of them 

# Get filename from input
fileName = str(input("Please enter the name of the text file (must be in working directory!) e.g. 'integers.txt':\n"))

# Read the text file line by line into a list
textFile = open(fileName, 'r')
lines = textFile.readlines()

# Find the most common occurence
mostCommon = max(lines,key=lines.count)

print("\nThe most common occurance in the file '" + fileName + "' is: " + mostCommon)
