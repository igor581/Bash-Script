#!/bin/bash

# author: Tia M
# Date: October 25 , 2019
# Modified on:             by:


var="something"
if [ $var != "otherthing" ] && [ $var != "everything" ] && [ $var == "something" ]; then
    echo "this will be printed"
else
    echo "this will not be printed"
fi

