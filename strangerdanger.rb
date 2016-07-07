puts 'Are you famous'
input = gets.chomp.downcase
if input == 'yes'
  10.times do
    puts "OMG!!!"
  end
elsif input == 'no'
  3.times do
    puts 'stranger danger!!!!!!'
  end
else
  puts 'What'
end
