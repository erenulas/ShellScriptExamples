#Eren Ulas - 150114822
#if the user input is a non-integer expression, then check is 1
#if the user input is an integer, then check is 0
#it stays in the while loop until user enters an integer value
check=1
echo "Enter the height of the square : "
read height
while test $check -ne 0
do
if test $height -eq $height 2>/dev/null
then
check=0
else
check=1
echo "You've entered a non-integer input!"
echo "Please enter the height of the square as integer: "
read height 
fi
done
#checks if the entered integer is between 5 and 79 inclusive
#if it's not in the range, then program exits with a return value of 1
if [ $height -le 79 -a $height -ge 5 ]
then
#first loop is for the setting the height
#the second one is for putting the asterisks into the current line
for (( i=0; i<$height; i++))
do
for (( j=0; j<$height; j++))
do
#if first loop counter is equal to 1 or 2 or height-1 or height-2, it prints stars
#these cases indicates, that it's in the 1st,2nd, or the last 2 lines
#and in these lines, it has to print the stars without putting spaces
if [ $i -eq 0 -o $i -eq 1 -o $i -eq `expr $height - 1` -o $i -eq `expr $height - 2` ]
then		
echo -n "*"
#if the second loop counter is equal to 0, or 1, or height-1, or height-2, it prints the stars
#these cases represents the situations where the program is printing to the 1st,2nd or the last 2 columns
#and in these lines, it needs to print the stars.
#If it doesn't satisfy these cases, then it prints spaces
elif [ $j -eq 0 -o $j -eq 1 -o $j -eq `expr $height - 1` -o $j -eq `expr $height - 2` ]
then
echo -n "*"
else
echo -n " "
fi
done
echo
done
else
echo "$height is not between 5 and 79 (inclusive)"
exit 1
fi

