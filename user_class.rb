class User
  attr_accessor :name, :age, :username, :password
  def initialize(name, username, password, age)
    @name = name
    @username = username
    @password = password
    @age = age
  end
end
new_user = User.new('Walid', 'PaTi', 1234, 24)
puts new_user.name
new_user.name = 'Eimad'
new_user.age = 27
puts "My new name is #{new_user.name} and I am #{new_user.age}"
