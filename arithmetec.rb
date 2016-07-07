# Create a program that will take two numbers and then gives the user a choice of what kind of arithmetic they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. This time you really gotta use methods!
# numbers = []
# def math(numbers, art)
#   (numbers).reduce(art)
# end
# puts 'What is your first number'
# input = gets.chomp.to_i
# puts 'What is your second number'
# response = gets.chomp.to_i
# numbers<<input
# numbers<<response
# puts 'What kinda math you\'s'
# user = gets.chomp.to_sym
# puts math(numbers, user)

def add(num1, num2)
  num1 + num2
end
def subtract(num1, num2)
  num1 - num2
end
puts 'What is your first number'
input = gets.chomp.to_i
puts 'What is your second number'
response = gets.chomp.to_i
puts 'What kinda math'
math = gets.chomp
puts send(math, input, response)
