=begin
Create a program that will shuffle a deck of cards and assign a number of players two cards. Make sure to ask the user for the number of players who are playing.
=end
names = []
input = ''
cards = [1,2,3,4,5,6,7,8,9]
until input == 'Done'
  puts "Who is playing tonight?"
  input = gets.chomp.capitalize
  if input != 'Done'
    names<<input
  end
end
names.each do |person|
  puts "#{person}'s cards are #{cards.shuffle!.pop} and #{cards.shuffle!.pop}"
end
