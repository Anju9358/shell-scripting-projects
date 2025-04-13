#########################
# Author: Anju
# Date: 12/4/2025
# version: V1
#Write a shell script to create a user
########################################
read -p "Please enter the username: " username #with this command we can take user input from user
read -s -p "Please enter the password: " password # read -s hides the password input
echo  # Just moves to a new line after hidden password input

## with this we can check if user already exit or not.

if id "$username" &>/dev/null; then
	echo "user already exist"
	exit 1 #stops the script right there and signals that something went wrong
else
	#Encrypt the password
	encrypted_pass=$(openssl passwd -1 "$password")

        #Create the user with home directory and encrypted password
	sudo useradd -m "$username" -p "$encrypted_pass"

	# Check if the user was created successfully
	if [ $? -eq 0 ]; then
		        echo "$username user created successfully"
		else
			        echo "error: failed to create user, kindly check again"
	fi

fi


