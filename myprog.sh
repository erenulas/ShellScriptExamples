#Eren Ulas - 150114822
#choice keeps the user selected option
choice=0
#turn is to know that it's the initial state
#it stays as zero until the password check is done.
turn=0
#keeps the return value of the password check program
confirm=1
#as long as choice is not 6, it stays in the loop
while [ $choice -ne 6 ]
do
echo "Please select an option: "
echo "  1. Password Check"
echo "  2. Find the Oldest File"
echo "  3. Find sum and average"
echo "  4. Square of asterisks"
echo "  5. Rename the Letter"
echo "  6. Exit"
read choice
#if the choice is not 1, and not 6, and the turn is 0
#it means that user didn't choose the password check first
#if the choice is 1 and the turn is 0, then it runs the password check
#and assigns its return value to confirm
if [ $choice -ne 1 -a $turn -eq 0 -a $choice -ne 6 ]
then
echo "You have to go through the password check first"
elif [ $choice -eq 1 -a $turn -eq 0 ]
then
./myprog1.sh
confirm=$?
fi
#if password check is done right, then it increases the turn by 1
#to indicate that the password check is done
if [ $confirm -eq 0 ]
then
if [ $turn -eq 0 ]
then
turn=`expr $turn + 1`
fi
#according to the user choice, it runs the related program
if [ $choice -eq 2 ]
then
./myprog2.sh
elif [ $choice -eq 3 ]
then
./myprog3.sh
elif [ $choice -eq 4 ]
then
./myprog4.sh
elif [ $choice -eq 5 ]
then
./myprog5.sh
elif [ $choice -eq 6 ]
then
exit 0
fi
fi
done
