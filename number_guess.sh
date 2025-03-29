#!/bin/bash

# Final optimized version with all improvements
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read username

# Improved user check with single optimized query
USER_DATA=$($PSQL "SELECT u.user_id, COUNT(g.game_id), MIN(g.guesses) FROM users u LEFT JOIN games g USING(user_id) WHERE username='$username' GROUP BY u.user_id")

if [[ -z $USER_DATA ]]
then
  # New user
  echo -e "\nWelcome, $username! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$username')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$username'")
else
  # Existing user - parse the query results
  IFS='|' read -r USER_ID GAMES_PLAYED BEST_GAME <<< "$USER_DATA"
  echo -e "\nWelcome back, $username! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate random number between 1-1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0

echo -e "\nGuess the secret number between 1 and 1000:"

while true
do
  read GUESS

  # Validate input is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  ((GUESS_COUNT++))

  # Check guess against secret number
  if [[ $GUESS -eq $SECRET_NUMBER ]]
  then
    # Correct guess - end game
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    # Save game results to database
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses, secret_number) VALUES($USER_ID, $GUESS_COUNT, $SECRET_NUMBER)")
    break
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  else
    echo "It's lower than that, guess again:"
  fi
done

