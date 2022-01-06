class Card

  attr_reader :value

  def initialize(rank, suit, value)
    @rank = rank
    @suit = suit
    @value = value
  end

  def to_str
    "#{@rank} of #{@suit}"
  end
end