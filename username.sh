#! /bin/bash
# username.sh
# Jordan Odekirk
echo "Enter a password"
echo "The password must consist of: "
echo "digits"
echo "and the underscore character."
echo "It must start with a lowercase letter,"
echo "It must be between 3 and 12 characters"
read NAME
while echo "$NAME" | egrep -v "^[a-z]{1}[0-9a-z_]{1,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid password - read the rules again!"
	echo "Enter a password: "
	read NAME
done
echo "Thank you"
