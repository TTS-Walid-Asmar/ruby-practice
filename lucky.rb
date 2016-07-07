class Randomizer
  def random
     students = %w(Julie Josh Emily Peter Baker Cherron Eric)
    x = students.sample
  end
end

lucky_student = Randomizer.new

the_one = lucky_student.random
puts "The lucky student is #{the_one}"
system("say 'the lucky student is, #{the_one}'")
