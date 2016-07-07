puts 'What is your number grade?'
answer = gets.chomp.to_i
if answer >= 60
  puts 'They passed'
else
  puts 'You need to take the class again.'
end
