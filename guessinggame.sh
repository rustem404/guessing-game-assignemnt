# Notes:
# 1) Variables names are intentionally left global to simplify script
# 2) ls -Fa is taken in respect to POSIX notation (ls -pa also works)
# 3) Script does not check if value entered is integer

function compare_values {
	if [[ $response -gt $actual_value ]]
then
	echo "There are not that many files. Please try again:"
	read response
elif [[ $response -lt $actual_value ]]
then
	echo "You're wrong, there are more files exist in this directory. Please try again:"
	read response
fi
}


echo "How many files are in current directory? Please type in an integer:"
read response
actual_value=$(ls -Fa | grep -v "/" | wc -l)

while [[ $response -ne $actual_value ]]
do
compare_values
done

echo "It seems to be a case that you are right this time! Good job!"
