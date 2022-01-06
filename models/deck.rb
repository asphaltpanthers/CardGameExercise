require_relative 'card'

class Deck

  def initialize
    @deck = []

    suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
    ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King']

    suits.each do |suit|
      ranks.each_with_index do |rank, index|
        @deck << Card.new(rank, suit, index + 1)
      end
    end

    shuffle
  end

  def remove_top_card
    @deck.pop
  end

  def return_card(card)
    @deck << card
  end

  def shuffle
    @deck = @deck.shuffle
  end
end