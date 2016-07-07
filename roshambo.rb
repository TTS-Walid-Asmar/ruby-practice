puts 'Welcome to the Ruby Rock, Paper, Scissors game. Please type rock, paper , or scissors.'
response = gets.chomp.downcase
comp = rand(3)
if comp == 0
  comp = 'rock'
elsif comp == 1
  comp = 'paper'
elsif comp == 2
  comp = 'scissors'
end

if response != 'rock' && response != 'paper' && response != 'scissors'
  puts "Woah, #{response} is not an option!"
else
  if response == comp
    puts "We both chose #{response}, guess it's a tie."
  elsif
    response == 'rock' && comp == 'paper' || response == 'paper' && comp == 'scissors' || response == 'scissors' && comp == 'rock'
      puts "You chose #{response} and I chose #{comp}, ha this was too easy."
  elsif response == 'rock' && comp == 'scissors' || response == 'paper' && comp == 'rock' || response == 'scissors' && comp == 'paper'
    puts "You chose #{response} and I chose #{comp}, looks like you got lucky this time."
  end
end
