# TwO-O-Player Math Game Planning Exercise

## Player Class

- ATTR: name - either player one or player two
- ATTR: life - each player is assigned three lives

- METHOD: life_decrease - remove a life from player 

- METHOD: validate_answer - if player_answer is equal to question sum return player name + "YES! You are correct," else if they don't match return player ID + "Seriously? No!" and decreases player lives by one

## Question Class

- METHOD: ask_question - Puts a question that is a string that asks a user to add two randomly generated single digit integers and returns the answer as its value
 

## Game Class

- ATTR: current_player - defaults as player one and switches between players

- ATTR: winner - the player at the end of the game that has not lost thier lives defualts as null


- METHOD: update_score - at the end of each round tallies the lives for each player and prints a string with a new score at the end of each round

- METHOD: new_turn - change current player 

- METHOD: end_game - when a single player achieves loses all there lives the opposite player is declared the winner using string "Player X wins with a score of (lives)" then return the string GAME OVER then return the string "Good bye!"
