## CardGameExercise
### Running
I built this on my local using version 2.7.1 of Ruby. To run, issue the following command.

    ruby card_game_exercise.rb
The game will begin to run. You may execute rounds of the game by pressing the `Enter` key.
### Remarks
I didn't give a lot of thought towards testability of the game. I also didn't write any unit tests. I demonstrated how I would make the game testable by injecting the deck dependency into the game model. This way I could build my own deck in the tests and have predictable results in my unit tests.

I made an assumption that in the event of a tie between the player and the dealer, the dealer wins. I gave no thought to what would happen if players tied. I suppose if I wanted to spend more time on this, I would check for tied players and announce each of the tied player as a winner. I suppose that would result in a "split pot" of sorts.