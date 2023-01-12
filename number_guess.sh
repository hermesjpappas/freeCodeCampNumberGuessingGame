#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
# generate random number
RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ))
TRIES=1
GUESS=''
# prompt user for username and read it
echo -e "\nEnter your username:\n"
read USERNAME
# search for username in database
USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

# if it doesn't exist, put it there
if [[ -z $USER ]]
  then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USER! It looks like this is your first time here."

  else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE username='$USER'")
  BEST_GAME=$($PSQL "SELECT MIN(tries) FROM games WHERE username='$USER'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "\nGuess the secret number between 1 and 1000:\n"

while [[ $RANDOM_NUMBER != $GUESS ]]
do
  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
    echo "That is not an integer, guess again:"

    else
    if [[ $GUESS < $RANDOM_NUMBER ]]
      then
      echo "It's higher than that, guess again:"
      ((TRIES++))
    elif [[ $GUESS > $RANDOM_NUMBER ]]
      then
      echo "It's lower than that, guess again:"
      ((TRIES++))
    fi
  fi
done

INSERT_GAME=$($PSQL "INSERT INTO games(username, tries) VALUES('$USER', $TRIES)")
echo "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"
