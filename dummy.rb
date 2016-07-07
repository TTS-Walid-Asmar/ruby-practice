# Write a program that repeats everything a user inputs. It should only stop when a user types "I'm a dummy"
puts "What are you?"
loop do
  input = gets.chomp.capitalize
  puts "#{input}"
  break if input == "I'm a dummy"
end
