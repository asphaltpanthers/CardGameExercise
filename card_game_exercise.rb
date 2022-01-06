require_relative 'models/game'
require_relative 'models/deck'

deck = Deck.new
game = Game.new(deck)

while true do
  puts('Welcome to CardGame. Press Enter to play a round...')
  gets.chomp

  game.round_of_game
end