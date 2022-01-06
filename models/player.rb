class Player

  attr_reader :card1, :card2

  def deal_card_one(card)
    @card1 = card
  end

  def deal_card_two(card)
    @card2 = card
  end

  def value
    @card1.value + @card2.value
  end
end