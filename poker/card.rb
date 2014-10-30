class Card

  FACE_CARDS = {
    11 => "Jack",
    12 => "Queen",
    13 => "King",
    14 => "Ace"
  }

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
  
  attr_reader :value, :suit

  def to_s
    "#{polished_value} of #{suit}"
  end

  def polished_value
    FACE_CARDS.fetch(@value, @value)
  end
end
