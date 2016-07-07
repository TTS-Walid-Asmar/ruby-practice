animals = %w[dog cat monkey]
animals.each do |anim|
  if anim == 'dog'
    puts 'woof'
  elsif anim == 'cat'
    puts 'meow'
  elsif anim = 'monkey'
    puts 'monkey noise'
  end
end

animals = {'dog' => 'bark', 'cat' => 'meow', 'monkey' => 'monkey noise'}
animals.each do |x, v|
  puts "The #{x} #{v}'s"
end 
