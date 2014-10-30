require "./card"

class Deck

  VALUES = (2..14)
  SUITS = %w[Hearts Diamonds Clubs Spades]

  def initialize
    @deck = []
  end

  def show_cards
    generate_cards
    print(@deck)
  end

  def generate_cards
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck << Card.new(value, suit)
      end
    end 
  end

  def print(deck)
    deck.each do |card|
      puts card
    end
  end
end

deck = Deck.new
deck.show_cards
