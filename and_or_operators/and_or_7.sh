#!/bin/bash

# author: Tia M
# Date: October 25 , 2019
# Modified on:             by:

# Logical OR & AND operations are very useful where multiple conditions are used in our programs (scripts).
# OR is used between two or multiple conditions. It returns true if any one of conditions returns as true.
# AND is used between two or multiple conditions. It returns true only if all the conditions returns as true.
# Logical OR in bash script is used with operator -o or (||)
# Logical AND in bash script is used with operator -a or (&&)

a=10
b=20

if [ $a != $b ]
then
   echo "$a != $b : a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a -lt 100 -a $b -gt 15 : returns true"
else
   echo "$a -lt 100 -a $b -gt 15 : returns false"
fi

if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a -lt 100 -o $b -gt 100 : returns true"
else
   echo "$a -lt 100 -o $b -gt 100 : returns false"
fi

if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a -lt 100 -o $b -gt 100 : returns true"
else
   echo "$a -lt 100 -o $b -gt 100 : returns false"
fi
