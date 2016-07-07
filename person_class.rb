class Person
  def initialize(name, age)
    @name, @age = name, age
  end
  def name
    @name
  end
  def age
    @age
  end
  def birthday
    @age += 1
  end
  def change_name=(input)
    @name = input
  end
end

my_profile = Person.new("Walid", 24)
my_profile.birthday
my_profile.change_name = "PaTi"
puts "Hi, I am #{my_profile.name} and I am #{my_profile.age}-years-old."
