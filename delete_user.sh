#########################
# Author: Anju
# Date: 12/4/2025
# version: V1
#Write a shell script to create a user
########################################

read -p "Please enter the username you want to delete: " username #with this command we can take username as input from user
echo "" # for space

if id "$username" &>/dev/null; then
	sudo userdel -r "$username"
	if [ $? -eq 0 ]; then
		echo "user deleted successfully"
	else
		echo "error: try again to delete this user"
	fi
else
	echo "this user does not exist to delete"
fi

