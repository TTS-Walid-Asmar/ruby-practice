# Ask a user for their favorite color. If they answer with blue or green, puts "Great Choice!". If it's anything else, the program should mention the color by name and say "Really, that's your favorite color?"
#
puts 'what is your favorite color'
ans = gets.chomp.downcase
if ans == 'blue' || ans == 'green'
  puts "great choice!"
else
  puts "#{ans}?!? Really, thats your favorite color?"
end
