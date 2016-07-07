students = %w[brian abdel nelson]
teachers = %w[tim zach]
puts 'Who are you'
user = gets.chomp.downcase
if students.include?(user)
  puts 'Back to class kid'
elsif teachers.include?(user)
  puts 'fun day for some learning'
else
  puts 'I dont know you'
end
