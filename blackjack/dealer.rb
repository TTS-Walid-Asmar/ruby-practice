class BlackJackDealer
  attr_reader :name
  attr_accessor :hand
  def initialize(name)
    @name = name
    @hand = []
  end
end
