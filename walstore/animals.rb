class Animal
  def speak
    puts 'Hello'
  end
end

class Dog < Animal
  def speak
    puts "BARK"
  end
end

baby = Dog.new
baby.speak
