class Player
  attr_reader :name
  attr_accessor :cash, :won, :hand
  def initialize(name, cash, won: 0)
    @name = name
    @cash = cash
    @won = won
    @hand = []
  end
  def money_check(bet)
    if bet > @cash
      puts "Sorry looks like you don't have enough funds to make that bet. Enter 1 if you'd like to deposit more money into your account or 2 if you'd like to exit."
      input = gets.chomp.to_i
      if input == 1
        deposit
      end
    end
  end
  def deposit
    puts "How much would you like to deposit into your account?"
    response = gets.chomp.to_i
    @cash += response
    puts "Thanks you now have $#{@cash}."
  end
  def money_status
    if @cash == 0
      puts "Well looks like you're done!"
    elsif
      @cash < 0
      puts "Yeah the atm is right over the, I'll be waiting for my $#{@cash.abs}"
    else
      puts "You're sitting at $#{@cash}."
    end
  end
end
