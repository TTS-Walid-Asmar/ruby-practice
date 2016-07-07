puts 'Give me a number between 1 and 100'
number = 24
answer = gets.chomp.to_i
if answer == number
  puts 'Wow'
elsif answer <= number + 5 && answer >= number - 5
  puts "#{answer} is close enough to #{number}"
elsif answer <= number - 10 || answer >= number + 10
  puts 'You are 10 or more away'
else
  puts 'NOPE!'
end
