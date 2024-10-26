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
#   - mod_user: Modifies an existing user account (e.g., change home directory)
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

