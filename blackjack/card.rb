class Card
  @@deck = []
  attr_reader :value, :suit
  def initialize(value, suit)
    @suit = suit
    @value = value
    @@deck << self.to_a
  end
  def self.all
    @@deck
  end
  def to_a
    [@value, @suit]
  end
  def to_s
    self.join("-")
  end
end
nums = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
suits = %i[Spades Hearts Diamonds Clubs]
suits.each do |suit|
  (0..12).each do |i|
    Card.new(nums[i], suit)
  end
end
