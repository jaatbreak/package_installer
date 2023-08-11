#!/bin/bash

# We are making the digigtal calculator using the selective loop
select opt in Addition subtraction Multiplication Division Quit
do
        case $opt in 
                Addition)
                        read -p "Enter the num1:" a
                        read -p "Enter the num2" b
                        echo "The Addition of the $a and $b is $((a+b))"
                        ;;
                subtraction)
                        read -p "Enter the num1:" a
                        read -p "Enter the num2" b
                        echo "The Subtraction of the $a and $b is $((a-b))"
                        ;;
                Multiplication)
                        read -p "Enter the num1:" a
                        read -p "Enter the num2" b
                        echo "The Multiplication of the $a and $b is $((a*b))"
                        ;;
                Division)
                        read -p "Enter the num1:" a
                        read -p "Enter the num2" b
                        echo "The Division of the $a and $b is $((a/b))"
                        ;;
                Quit)
                        echo "Thank you for using the shell script"
                        exit 0
                        ;;
                *)
                        echo "Invalid option"
                        ;;
        esac
done
