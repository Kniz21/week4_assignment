#!/usr/bin/env bash
# File: guessinggame.sh

function guess {
  local num_files=$(ls -1 | wc -l)  # Counts the number of files in the current directory
  local user_guess=-1               # Initialize guess

  while [[ $user_guess -ne $num_files ]]
  do
    echo "Guess how many files are in the current directory:"
    read user_guess

    if [[ $user_guess -lt $num_files ]]
    then
      echo "Your guess is too low. Try again."
    elif [[ $user_guess -gt $num_files ]]
    then
      echo "Your guess is too high. Try again."
    fi
  done

  echo "Congratulations! Your guess is correct."
}

guess

