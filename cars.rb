cars = {'toyota' => 'fj', 'ford' => 'f150',
  'tesla' => 's', 'honda' => 'civic'}
puts 'What car do you drive?'
make = gets.chomp.downcase

puts  "Oh you drive a #{make} that's #{cars.key(make)}"

# cars.each do |key, value|
#   if make == value
#     puts "Oh you drive a #{value}, that's a #{key} right?"
#   end
# end
