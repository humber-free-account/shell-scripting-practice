#! /usr/bin/env bash
while true

do
  # When the program is first loaded, display a greeting to the user.
  echo " Welcome to my Calculator"

  # Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
  echo "Select any of the following operations to perform.
    1) Addition - a
    2) Subtraction - s
    3) Division - d
    4) Multiplication - m
    Press e to Quit."

  # Then, capture the user selection.
  echo "Please Enter your selection:"
  read OPERATION
  
    # If the selection matches a supported operation, execute the operation.
    # If the selection does not match a support operation, display an error message.
    case $OPERATION in
            "addition"|"a")

                    let "result= $1+$2"
                    echo "Result: $result"
                    ;;

            "subtraction"|"s")

                    let "result= $1-$2"
                    echo "Result: $result"
                    ;;

            "division"|"d")

                    let "result = $1/$2"
                    echo "Result: $result"
                    ;;

            "multiplication"|"m")

                    let "result=$1*$2"
                    echo "Result: $result"
                    ;;

            "exit"||"e")

                    echo "Bye Bye!!"
                    break
                    ;;
             *)
                    echo "Please check your selection"
                    ;;
        esac
done