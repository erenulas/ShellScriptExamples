#reads the user input
echo "Enter the name of the recipient:"
read recipient
#replaces "NAME" word in the file with the user input
sed -i "s/NAME/$recipient/g" letter.txt

