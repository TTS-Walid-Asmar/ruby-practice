puts 'cat or dog?'
ans = gets.chomp.downcase
if ans == 'dog'
  puts 'woof'
elsif ans == 'cat'
  puts 'meow'
else
  puts 'idk'
end
