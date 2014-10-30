class Round
  def initialize(deck)
    @deck = deck
  end

  def play
    shuffled_deck = dealer_shuffles(@deck)
    hand = dealer_deals(shuffled_deck)
    analyze(hand)
  end

  def dealer_shuffles(deck)
    deck.shuffle
  end

  def dealer_deals(shuffled_deck)
    shuffled_deck.shift(5)  
  end

  def analyze(hand)
  end
end
