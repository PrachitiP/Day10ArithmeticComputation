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

# UseCase 3 => computing operation 2

Result2=$(($number1*$number2+$number3))
echo "Result of operation2 is:"$Result2

# UseCase 4 => computing operation 3

Result3=$(($number3+$number1/$number2))
echo "Result of operation2 is:"$Result3

# UseCase 5 => computing operation 4

Result4=$(($number1%$number2+$number3))
echo "Result of operation4 is:"$Result4

# UseCase 6 => Store results in Dictionary

declare -A Dict

Dict[var1]=$Result1
Dict[var2]=$Result2
Dict[var3]=$Result3
Dict[var4]=$Result4

# Printing Dictionary
echo ${Dict[@]}

# UseCase 7 => Store Results in Array 
#storing dictionary in array
count=0
for i in ${Dict[@]}
do
	Array[((count++))]=$i
done

#printing array elements
echo "Array elements are:" ${Array[@]}


# UseCase 8 => Descending Order
#sorting in descending order
for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${Array[j]} -lt ${Array[$((j+1))]} ]
		then
			temp=${Array[j]}
			Array[$j]=${Array[$((j+1))]}
			Array[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array in descending order:" ${Array[@]}

# Usecase 9 => Sort in Ascending Order

for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${Array[j]} -gt ${Array[$((j+1))]} ]
		then
			temp=${Array[j]}
			Array[$j]=${Array[$((j+1))]}
			Array[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array in ascending order:" ${Array[@]}
