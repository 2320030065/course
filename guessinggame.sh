#!/bin/bash

# Function to get the number of files in the current directory
function get_file_count {
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory:"

while true; do
  read -p "Your guess: " guess
  
  # Check if the guess is a valid number
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi
  
  # Compare the guess with the actual file count
  if (( guess < file_count )); then
    echo "Too low!"
  elif (( guess > file_count )); then
    echo "Too high!"
  else
    echo "Congratulations! You guessed the correct number: $file_count."
    break
  fi
done
