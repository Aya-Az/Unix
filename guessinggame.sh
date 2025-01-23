#!/bin/bash

# Function to ask the user to guess the number of files
function guess_files {
    # Get the number of regular files in the current directory
    local num_files=$(find . -maxdepth 1 -type f | wc -l)

    # Welcome message
    echo "Welcome to the Guessing Game!"

    # Ask the user for a guess
    echo "Guess how many files are in the current directory:"
    read guess

    # Check for non-numeric input
    while ! [[ $guess =~ ^[0-9]+$ ]]; do
        echo "Please enter a valid number."
        read guess
    done

    # Loop until the user guesses correctly
    while [[ $guess -ne $num_files ]]
    do
        if [[ $guess -lt $num_files ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $num_files ]]; then
            echo "Too high! Try again."
        fi
        read guess

        # Check for non-numeric input again
        while ! [[ $guess =~ ^[0-9]+$ ]]; do
            echo "Please enter a valid number."
            read guess
        done
    done

    # Congratulate the user when they guess correctly
    echo "Congratulations! You guessed the correct number of files."
}

# Call the function to start the game
guess_files

