class Student
   attr_reader :username, :password
   def initialize(username, password)
       @username = username
       @password = password
   end
   def login
       puts "Do you have a profile?"
       yesno = gets.chomp.downcase
       if yesno == "yes" || yesno == "y"
           puts "Please login\nUsername:"
           @username = gets.chomp
           puts "Password:"
           @password = gets.chomp
           puts "Welcome #{@username}, login successful."
       else
           puts "Please create a username:"
           @username = gets.chomp
           puts "Please enter your password:"
           @password = gets.chomp
           puts "Please confirm your password:"
           confirm = gets.chomp

           until confirm == @password
               puts "Sorry, those passwords do not match. Try again."
               puts "Please confirm your password:"
               confirm = gets.chomp
           end

           puts "Please login\nUsername:"
           name = gets.chomp
           puts "Password:"
           passwd = gets.chomp

           while name != @username || passwd != @password
               puts "You entered an incorrect username or password."
               puts "Please login\nUsername:"
               name = gets.chomp
               puts "Password:"
               passwd = gets.chomp
           end

           puts "Welcome #{@username}, login successful."
       end

   end

   def quiz
       @answers = []
       @key = %w[3 2 3 1 3]
       puts "Please provide the answers to the following questions"
       puts "\nA. What is the square root of 25?\n1. 4\n2. 6.25\n3. 5"
       input1 = gets.chomp
       @answers << input1
       puts "\nB. What is the capital of North Carolina?\n1. Durham\n2. Raleigh\n3. Cleveland"
       input2 = gets.chomp
       @answers << input2
       puts "\nC. What is the most abundent element in this universe?\n1. Carbon\n2. Oxygen\n3. Hydrogen"
       input3 = gets.chomp
       @answers << input3
       puts "\nD. What is the speed of light in meters per second?\n1. 2.998 X 10^8\n2. 3.18 X 10^6\n3. 2.998 X 10^7"
       input4 = gets.chomp
       @answers << input4
       puts "\nE. What is -(1 x -1)^2 -1?\n1. -i\n2. -2\n3. 0"
       input5 = gets.chomp
       @answers << input5
       puts "\n"
   end

   def results
      score = 0
      counter = 0
       p @answers
       p @key
       @answers.each do |ans|
         if ans == @key[counter]
           score+=20
           counter += 1
         end
       puts "test"
       p score
       puts "end"
   end
end

new_student = Student.new(" "," ")

puts new_student.login
puts new_student.username
puts new_student.password
puts new_student.quiz
puts new_student.results
