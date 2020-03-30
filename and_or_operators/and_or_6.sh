#!/bin/bash

# author: Tia M
# Date: October 25 , 2019
# Modified on:             by:

# Logical OR & AND operations are very useful where multiple conditions are used in our programs (scripts).
# OR is used between two or multiple conditions. It returns true if any one of conditions returns as true.
# AND is used between two or multiple conditions. It returns true only if all the conditions returns as true.
# Logical OR in bash script is used with operator -o or (||)
# Logical AND in bash script is used with operator -a or (&&)

cat /etc/shadow > /dev/null && echo "Shadow file opened successfully" || echo "Shadow file Failed to open"

cat /etc/shadow > /dev/null && echo "Shadow file opened successfully" || echo "Shadow failed to open"

cat /etc/passwd > /dev/null && echo "passwd file opened successfully" || echo "passwd file failed to open"

cat /etc/group > /dev/null && echo "Group file opened successfully" || echo "Group failed to open"

