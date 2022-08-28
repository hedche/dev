#!/usr/bin/python3

# This script will take two strings as an anagram and print out whether or not they are anagrams.

# First we make both strings lower case to standardise them
str1 = sorted(str(input("Please enter the first string:\n")).lower())
str2 = sorted(str(input("Please enter the second string:\n")).lower())

if(len(str1) == len(str2)):
    if(str1 == str2):
        print("Strings provided ARE anagrams!")
        quit()

print("Strings provided are NOT anagrams!")
