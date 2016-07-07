addition = 0
input = ''
until input == 'done'
  puts 'Give me a number'
  input = gets.chomp
  if input != 'done'
    puts addition += input.to_i
  end
end
