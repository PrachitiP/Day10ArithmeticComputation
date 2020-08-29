#!/bin/bash 

echo "Welcome to Arithmetic Computation and Sorting"

# UseCase 1 => taking 3 numbers as input

read -p "enter first number:" Number1
read -p "enter second number:" Number2
read -p "enter third number:" Number3

echo "entered numbers are:"

echo "first number:"$Number1
echo "second number:"$Number2
echo "third number:"$Number3

# UseCase 2 => computing operation 1

Result1=$(($number1+$number2*$number3))
echo "Result of operation1 is:"$Result1
