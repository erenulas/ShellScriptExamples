#Eren Ulas - 150114822
#counter keeps the number of rounds, and increases itself by 1
#if the user enters a wrong password.
counter=0
while [ $counter -ne 3 ] 
do
echo "Please enter the password: "
read password
#compares the password with cse333
#if it's true, it exits with a return value of 0
#if the user reaches 3 rounds, then it exits with a return value of 1
if test "$password" = "cse333" 
then
echo "Access granted"
exit 0
else
echo "Access denied"
fi
counter=`expr $counter + 1`
done
exit 1
