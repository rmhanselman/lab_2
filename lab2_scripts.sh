#!/bin/bash
# Author: Ryan Hanselman
# Date: 01/30/2019

# Problem 1 Code:

echo "Enter RegEx"
read reg
echo "Enter a File Name"
read file
grep $reg $file

#Counts the number of phone numbers in a file
grep -c -P '[0-9]{3}\-?+[0-9]{3}\-?+[0-9]{4}' regex_practice.txt

#Counts the number of emails in a file
grep -c -P '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' regex_practice.txt

#list all phone numbers in 303 area code and store reults in "phone_results.txt"
grep -P '\b(303)\-?+[0-9]{3}\-?+[0-9]{4}' regex_practice.txt  > phone_results.txt

#list all emails from geocities and store results in "emails_results.txt"
grep -P '@geocities.com' regex_practice.txt  > emails_results.txt

#list all lines that match command line and store in "command_results.txt"
grep $1 $2 > command_results.txt
