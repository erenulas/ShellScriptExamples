#finds the name of the oldest file
oldest=`ls -l -t --time-style=+"%d/%m/%Y %H:%M" | tail -1 | awk '{ print $8 }'`
#finds the modification hour of the oldest file
modif_hour=`ls -l -t --time-style=+"%d/%m/%Y %H:%M" | tail -1 | awk '{ print $7 }'`
#finds the modification date of the oldest file
modif_date=`ls -l -t --time-style=+"%d/%m/%Y %H:%M" | tail -1 | awk '{ print $6 }'`
#finds the group permissions
permissions=`stat -c "%a" $oldest | cut -c 2`
#finds the file type
type=`stat -c "%F" $oldest`
#goes through the if cases, to get string representation of the group permissions
if test $permissions -eq 0
then
permissions="zero permissions"
elif test $permissions -eq 1
then
permissions="execute"
elif test $permissions -eq 2
then
permissions="write"
elif test $permissions -eq 3
then
permissions="write and execute"
elif test $permissions -eq 4
then
permissions="read"
elif test $permissions -eq 5
then
permissions="read and execute"
elif test $permissions -eq 6
then
permissions="read and write"
elif test $permissions -eq 7
then
permissions="read,write and execute"
fi
#prints the text with the necessary variables
echo "The oldest file is $oldest which is modified on $modif_date at $modif_hour.$oldest is a $type and has $permissions for the group."


