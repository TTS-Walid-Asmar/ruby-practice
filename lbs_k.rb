def weight_convert(lb)
  kilos = lb / 2.2
  kilos = kilos.round(4)
end
puts "pounds please"
input = gets.chomp.to_f
puts "#{input} pounds is #{weight_convert(input)} kg."
