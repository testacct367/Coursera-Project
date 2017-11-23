#!/bin/bash
#function to read number
function readNumber ()
{
    echo "Please enter the lucky number"
    read luckynumber
}
#infinite loop; Loop breaks when user guess the correct number
clear
echo "Please guess the number of files in current folder"
while true
do 
    #invoke function
    readNumber
    #count the number of files in the folder
    filesno=$(ls | wc -l)
    if [ "$luckynumber" -eq "$filesno" ]; then
        #Congratulate user and break the loop
        echo "Congratulations. You have guess the number: $luckynumber"
        break

    else
        if [ "$luckynumber" -lt "$filesno" ]; then
            #notify user
            echo "Too low; Try again"
        else
            #notify user
            echo "Too high; Try again"
        fi
    fi        
done
exit 0