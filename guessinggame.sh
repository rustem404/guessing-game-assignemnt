# Note: Variables names are intentionally left global to simplify script

#!/usr/bin/env bash

function input_check {
read response
if ! [[ "$response" =~ ^[0-9]+$ ]]
then echo "Wrong user input. Please enter decimal integer:"
     input_check
fi
}

function compare_values {
	if [[ $response -gt $actual_value ]]
then
	echo "There are not that many files. Please try again:"
	input_check
elif [[ $response -lt $actual_value ]]
then
	echo "You're wrong, there are more files exist in this directory. Please try again:"
	input_check
fi
}

echo "How many files are in current directory? Please type in an integer:"
input_check

actual_value=$(ls | wc -l)

while [[ $response -ne $actual_value ]]
do
compare_values
done

echo "It seems to be a case that you are right this time: Number of files is $actual_value and you have entered $response! Good job!"
