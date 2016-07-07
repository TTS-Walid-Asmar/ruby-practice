class Student
  attr_accessor :login, :exam, :feedback
  def initialize(email, password)
    @email = email
    @password = password
    login
  end
  def login
    puts "Please enter your email"
    em = gets.chomp.downcase
    puts "Please enter your password"
    pw = gets.chomp
    if em == @email.downcase && pw == @password
      exam
      feedback
    else
      puts ""
    end
  end
  def exam
    @grade = 0
    puts "Please answer true or false"
    puts "Question One: 2 + 2 = 4. True or False"
    reply = gets.chomp.downcase
    if reply == "true"
      @grade =+ 1
    else
      @grade += 0
    end
    puts "The correct answer is True"
    puts "Question Two: The earth is round. True or False"
    reply = gets.chomp.downcase
    if reply == "true"
      @grade += 1
    else
      @grade += 0
    end
    puts "The correct answer is True"
    puts "Question Three: The sky is green. True or False"
    reply == gets.chomp.downcase
    if reply == "false"
      @grade += 1
    else
      @grade += 0
    end
    puts "The correct answer is False"
    puts "Question Four: Gasoline is flammable. True or False"
    reply = gets.chomp.downcase
    if reply == "true"
      @grade += 1
    else
      @grade += 0
    end
    puts "The correct answer is True"
    puts "Question Five: Computers run on magic. True or False"
    reply = gets.chomp.downcase
    if reply == "false"
      @grade += 1
    else
      @grade += 0
    end
    puts "The correct anser is False"
  end
  def feedback
    retake = ((@grade.to_f / 5.0) * 100)
    puts "Congrats! You got #{@grade} out of 5 correct!"
    puts "That means you got a #{(@grade.to_f / 5.0) * 100.0}% on this test!"
    if retake < 60.0
      puts "It seems you didn't do so well. Would you like to take it again?"
      reply = gets.chomp.downcase
      if reply == "yes"
        exam
        feedback
      else
        puts "Better luck next time!"
      end
    else
      puts "Great job!"
    end
  end
end

new_student = Student.new("wa", 1234)
new_student
