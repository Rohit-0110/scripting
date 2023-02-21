#!/bin/bash
echo "Select an action:"
echo "1. check the packages is Installed or not"
echo "2. Install packages"
echo "3. Remove packages"
read -p "Select any action : " CHOICE

read -p "Enter package name : " PACKAGES

case $CHOICE in
1)
    # Checking package installed or not
    if dpkg-query -W "$PACKAGES"; then
    echo "Package is already Installed"
    else
    echo "Package is not Installed"
    fi
    ;;
2)
    # Install the Packages
    sudo apt-get update
    sudo apt-get install -y $PACKAGES
    ;;
3)
    # Remove the packages
    sudo apt-get remove -y $PACKAGES
    sudo apt-get autoremove
    ;;
*)
    #Invalid choice
    echo "Invalid"
    exit 1
    ;;
esac

echo "Done"
