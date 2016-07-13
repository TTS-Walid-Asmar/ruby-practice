require_relative 'dealer'
require_relative 'card'
require_relative 'player'
class BlackJack
  @@pot = 0
  attr_accessor :all_players, :dealer
  def initialize(*args, dealer)
    @all_players = *args
    @dealer = dealer
    p @all_players
    @player_totals = {}
    @player_totals[@dealer] = 0
    start
  end
  def start
    2.times {hit(@dealer)}
    @all_players.each do |player|
      puts "$100 to play. You can enter 1 to confirm or exit to quit."
      response = gets.chomp.to_i
      if response == 1
        @player_totals[player] = 0
        player.money_check(100)
        puts "Welcome to the table #{player.name}!"
         2.times do
          hit(player)
        end
        self.pot = (100)
      else
        puts "Okay bye"
        fold(player)
      end
    end
    rules(@dealer)
  end
  def hit(someone)
    someone.hand<<Card.all.shuffle!.shift
  end
  def pot=(money)
    @@pot += money
    self.pot
  end
  def pot
    puts "The pot is now $#{@@pot}"
  end
  def rules(someone)
    p someone.hand
    value = someone.hand.flatten.map do |card|
      case card
      when "Jack", "Queen", "King"
        card = 10
      when "Ace"
        if @player_totals[someone] != nil && @player_totals[someone] >= 11
          card = 1
        else
          card = 11
        end
      when :Spades, :Hearts, :Diamonds, :Clubs
        card = 0
      else
        card
      end
    end
    p @player_totals[someone] = value.reduce(:+)
    if someone == @dealer
      dealer_blackjack
    else
      prompt(someone)
    end
  end
  def dealer_blackjack
    if @player_totals[@dealer] <= 17
      puts "Dealer hits"
      hit(@dealer)
      rules(@dealer)
    elsif @player_totals[@dealer] > 21
      @player_totals.delete(@dealer)
      puts "Dealer bust"
    elsif @player_totals[@dealer] == 21
      puts "Dealer wins!"
      exit
    end
    game
  end
  def game
    @all_players.delete(nil)
    @nil_count = 0
    @stand = []
    p @all_players
    player_check
    @all_players.each do |player|
      if player != nil
        rules(player)
      end
    end
    game
  end
  def prompt(someone)
    puts "#{someone.name} your hand is #{someone.hand} for a total of #{@player_totals[someone]}"
    if @player_totals[someone] > 21
      puts "Sorry looks like you've busted!"
      fold(someone)
      player_check
    elsif @player_totals[someone] == 21
      puts "Hey we have a winner!"
      winner(someone)
    else
      puts "Enter 1 to hit, 2 to bet, or anything else to stand."
      input = gets.chomp.to_i
      case input
      when 1
        hit(someone)
      when 2
        bet(someone)
      else
        puts "You chose to stand"
        @stand << "stand"
        winner_check
      end
    end
  end
  def bet(someone)
    puts "Okay how much would you like to bet?"
    input = gets.chomp.to_i
    someone.money_check(input)
    self.pot = input
    call(someone, input)
  end
  def call(someone, amount)
    puts "#{someone.name} raised to $#{amount}."
    @all_players.each do |player|
      if someone != player && player != nil
        puts "#{player.name} enter 1 if you wish to call, 2 to raise, and anything else to fold."
        response = gets.chomp.to_i
        if response == 1
          player.money_check(amount)
          self.pot = amount
        elsif response == 2
          bet(player)
        else
          fold(player)
          player_check
        end
      end
    end
  end
  def fold(someone)
    @all_players[@all_players.index(someone)] = nil if @all_players.index(someone)
    p @all_players
    player_check
  end
  def winner_check
    @all_players.each do |player|
      if player == nil
        @nil_count += 1
      end
    end
    if (@all_players.count - @nil_count) == @stand.count
      puts "Everyone chose stand, let's see who is the winner"
      winner(@player_totals.key(@player_totals.values.max))
    end
  end
  def player_check
    if @all_players.length == 1
      winner(@all_players[0])
    end
  end
  def winner(someone)
    if someone != @dealer
      someone.cash += @@pot
      someone.won += @@pot
    end
    puts "#{someone.name}'s #{someone.hand} for a total of #{@player_totals[someone]} won $#{@@pot}!"
    exit
  end
end
wal = Player.new("Walid", 200)
ab = Player.new("Abdel", 200)
amil = Player.new("Amilcar", 200)
david = BlackJackDealer.new("David")
a = BlackJack.new(wal, ab, amil, david)
