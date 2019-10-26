#!/bin/bash

# author: Tia M
# Date: October 25 , 2019
# Modified on:             by:

# Logical OR & AND operations are very useful where multiple conditions are used in our programs (scripts).
# OR is used between two or multiple conditions. It returns true if any one of conditions returns as true.
# AND is used between two or multiple conditions. It returns true only if all the conditions returns as true.
# Logical OR in bash script is used with operator -o or (&&)
# Logical AND in bash script is used with operator -a or (||)

Option=y
if [ "$option" = "Y" ] || [ "$option" = "y" ]; then
    echo "Entered $option"
else
    echo "Entered wong option"
fi

