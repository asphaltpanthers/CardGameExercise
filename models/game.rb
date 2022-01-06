require_relative 'deck'
require_relative 'player'

class Game

  def initialize(deck) # Injection for testability
    @deck = deck

    @players = []
    for player_num in 1..6
      @players << Player.new
    end
  end

  def deal
    @players.each do |player|
      player.deal_card_one(@deck.remove_top_card)
    end

    @players.each do |player|
      player.deal_card_two(@deck.remove_top_card)
    end
  end

  def print_hands
    for player_num in 0..4
      player = @players[player_num]
      puts "Player #{player_num + 1}: #{player.card1.to_str} and #{player.card2.to_str} Value: #{player.value}"
    end

    dealer = @players[5]
    puts "Dealer: #{dealer.card1.to_str} and #{dealer.card2.to_str} Value: #{dealer.value}" 
  end

  def determine_winner
    player_values = @players.map { |player| player.value }

    max_index = player_values.each_with_index.max[1]

    winner = "Player #{max_index + 1}"
    if max_index == 5
      winner = 'Dealer'
    else
      if player_values[max_index] == player_values[5]
        winner = 'Dealer'
      end
    end

    puts "#{winner} wins!"
  end

  def return_cards
    @players.each do |player|
      @deck.return_card player.card1
      @deck.return_card player.card2
    end
  end

  def round_of_game
    deal

    print_hands

    determine_winner

    return_cards

    @deck.shuffle
  end
end