#!/bin/bash

# read practique
# -n the same line 
# -e to accept the /n. if we do not put -e, the \n will not work
# \n for new line 

echo -en "What is your name?\n"
read name

echo -en "What is your city?\n "
read city

echo -en "What your state?\n "
read state
sleep 5 

echo -n "What is your name? "
read name

echo -n "What is your city? "
read city

echo -n "What your state? "
read state
sleep 5


echo "Your name is $name, your city is $city and your state is $state "


