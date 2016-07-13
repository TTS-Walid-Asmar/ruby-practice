class Randomizer
  def random
     students = %w(Julie Emily Peter Baker Eric)
    x = students.sample
  end
end

lucky_student = Randomizer.new

the_one = lucky_student.random
puts "The lucky student is #{the_one}"
system("say 'the lucky student is, #{the_one}'")
