echo "Enter a sequence of numbers followed by \"finish\" "
read input
#reads the entered numbers
#counter keeps the number of integers entered
counter=0
#if the input is "finish" in the first round
#it exits with a return value of 0
if test "$input" = "finish"
then
exit 0
fi
#stays in the while loop, as lon as the input isn't "finish"
while test "$input" != "finish"
do
#checks if the input is a number or a non-integer expression
#if it's a number, it adds the number, and increases the counter by 1
#if it's not a number, it gives a warning, and then waits for the user input
if test $input -eq $input 2>/dev/null
then
sum=`expr $sum + $input`
counter=`expr $counter + 1`
else
echo "You've entered a non-integer character!"
fi
read input
done
#after user enters "finish", it calculates average
#and, then  prints the results
average=`expr $sum / $counter`
echo "Sum : $sum"
echo "Average : $average"

