#!/bin/bash

# Check if environment variables are set
if [ -z "$DEV_ACCOUNT_NAME" ] || [ -z "$DEV_PASSWORD" ] || [ -z "$PROD_ACCOUNT_NAME" ] || [ -z "$PROD_PASSWORD" ]; then
    echo "Error: Environment variables not set. Please set DEV_ACCOUNT_NAME, DEV_PASSWORD, PROD_ACCOUNT_NAME, and PROD_PASSWORD."
    exit 1
fi

# Function to delete the internet password
delete_password() {
    security delete-internet-password -s git-codecommit.eu-west-1.amazonaws.com
    clear
}

# Function to add internet password for development
add_dev_password() {
    delete_password
    security add-internet-password -a "$DEV_ACCOUNT_NAME" -s "git-codecommit.eu-west-1.amazonaws.com" -D "Internet password" -w "$DEV_PASSWORD" -r "htps" -A
    echo "Development account Keychain entry successfully added."
}

# Function to add internet password for production
add_prod_password() {
    delete_password
    security add-internet-password -a "$PROD_ACCOUNT_NAME" -s "git-codecommit.eu-west-1.amazonaws.com" -D "Internet password" -w "$PROD_PASSWORD" -r "htps" -A
    echo "Production account Keychain entry successfully added."
}

# Clear the screen
clear

# Display menu
echo "Choose an option:"
echo "1. Add Development Account"
echo "2. Add Production Account"

# Read user input
read -p "Enter your choice: " choice

# Perform actions based on user input
case $choice in
    1)
        add_dev_password
        ;;
    2)
        add_prod_password
        ;;
    *)
        echo "Invalid option. Please choose 1 or 2."
        ;;
esac
