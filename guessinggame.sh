#!/usr/bin/env bash
# File: guessinggame.sh

function guess_files {
  local correct_count=$(ls -1 | wc -l)  # Count files in the current directory
  local user_guess=-1

  echo "Welcome to the Guessing Game!"
  echo "Try to guess how many files are in the current directory."

  while [[ $user_guess -ne $correct_count ]]; do
    read -p "Enter your guess: " user_guess

    if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
      echo "Please enter a valid number."
    elif [[ $user_guess -lt $correct_count ]]; then
      echo "Too low!"
    elif [[ $user_guess -gt $correct_count ]]; then
      echo "Too high!"
    else
      echo "Congratulations! You guessed it right!"
    fi
  done
}

guess_files
