#!/bin/bash

# Input string
input_string=$1

# Extracting numbers and operator
IFS='+' read -r num1 num2 <<< "$input_string"

# Removing leading and trailing spaces
num1=$(echo "$num1" | tr -d ' ')
num2=$(echo "$num2" | tr -d ' ')

# Performing addition
result=$((num1 + num2))

echo "$result"
