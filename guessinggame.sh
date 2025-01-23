#!/bin/bash

# Function to ask the user to guess the number of files
function guess_files {
    # Get the number of files in the current directory
    local num_files=$(ls -l | grep -v '^d' | wc -l)

    # Ask the user for a guess
    echo "Guess how many files are in the current directory:"
    read guess

    # Loop until the user guesses correctly
    while [[ $guess -ne $num_files ]]
    do
        if [[ $guess -lt $num_files ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $num_files ]]; then
            echo "Too high! Try again."
        fi
        read guess
    done

    # Congratulate the user when they guess correctly
    echo "Congratulations! You guessed the correct number of files."
}

# Call the function to start the game
guess_files
