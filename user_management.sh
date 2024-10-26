#!/bin/bash

# ========================================
# Script Name: user_management.sh
# Description: 
# This script automates the process of managing users on a Linux system.
# It allows for adding, deleting, and modifying users based on predefined
# rules or user input, simplifying system administration tasks.
#
# Functionality:
# - Adds new users to the system
# - Assigns default user groups and sets a temporary password
# - Deletes existing users from the system
# - Modifies user information (such as home directory or shell)
# - Logs all user management actions to a specified file
#
# Usage:
# Run the script with appropriate options:
#   - add_user: Adds a new user with specified username and default settings
#   - del_user: Deletes a user by username
#
# Example:
#   ./user_management.sh add_user <username>
#   ./user_management.sh del_user <username>
#
# Note: This script requires sudo or root privileges to manage users.
#
# Author: Shaunak Khare
# Created: October 26, 2024
# ========================================

add_user(){
	local username="$1"
	local password="$2"
	local groupname="$3"

	#Create a user
	useradd -m -s /bin/bash "$username"
	echo "$username:$password" | chpasswd
	
	#Add user to a group
	usermod -aG "$groupname" "$username"
	
	echo "User $username is added successfully."
}


del_user(){
	local username="$1"
	
	#delete a user
	userdel -r "$username"

	echo "User $username deleted."

}

change_passwd(){
	local username="$1"
	
	#Change the password of user
	passwd "$username"

}

# change_home_dir() {
# 	local username="$1"
# 	local dirname="$2"



# 	#Change the home directory of user
# 	cd /home/$username
# 	mkdir "$dirname"
# 	usermod -d "$dirname" "$username"

# }


add_group(){
	local username="$1"
	local groupname="$2"
	
	#Add user to a predefined group
	
	usermod -aG "$groupname" "$username"

}

set_acc_expiry() {
	local username="$1"
	local date="$2"

	#Set user account expiry date

	chage -E "$date" "$username"
}












