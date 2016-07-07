# When dividing numbers in Ruby, what if we want to include the remainder as well? Write a program that asks for two integers, divides the first by the second and returns the result including the remainder. If either of the numbers is not an integer, then don’t accept the number and ask again. Do not accept zero (0) as a number.

arr = []
2.times do
  puts 'give me a number'
  response = gets.chomp.to_i
  if response >= 1
  arr<<response
  else
    until response >= 1
    puts "I SAID A NUMBER!!! now try again"
    response = gets.chomp.to_i
      if response >= 1
        arr<<response
      end
    end
  end
end
p arr
puts arr.reduce(:/)
puts arr.reduce(:%)















# while 1
#  puts "Please enter 2 numbers:"
#  num1 = gets.chomp
#  num2 = gets.chomp
#  begin
#    num1 = Integer(num1)
#    num2 = Integer(num2)
#    if num1 == 0 || num2 == 0
#      raise ArgumentError
#    end
#    quot = num1 / num2
#    rmdr = num1 % num2
#    if rmdr == 0
#      puts "#{num1} / #{num2} = #{quot}"
#    break
#    else
#      puts "#{num1} / #{num2} = #{quot} with #{rmdr} left over."
#    break
#    end
#    rescue ArgumentError
#      puts("Sorry, one of those numbers is not an interger or is 0, please try again.")
#
#      #print not available to arithmetic
#
#  end
# end
