puts 'how many numbers do you want me to add?'
@arr1 = []
@arr2 = []
@arr3 = []
@input = gets.chomp.to_i
@input.times do
  @arr1<<rand(10)
  @arr2<<rand(10)
end
p @arr1
p @arr2
if @arr1.length < @arr2.length
  value = @arr2.length - @arr1.length
  value.times do
    arr1<<0
  end
elsif @arr1.length > @arr2.length
  value =  @arr1.length - @arr2.length
  value.times do
    arr2<<0
  end
end
counter = 0
@arr1.each do |num|w
  @arr3<<(num + @arr2[counter])
  counter+=1
end
p @arr3
