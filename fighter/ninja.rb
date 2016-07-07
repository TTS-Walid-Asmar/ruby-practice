require_relative 'fighter'
require_relative 'bear'
class Ninja < Fighter
  def attack(enemy)
    puts "...silence"
    enemy.lose_health(self.power, enemy.health)
  end
end

ninja = Ninja.new("Jet Li", 85, 10)
bear = Bear.new("Yogi", 100, 15)
puts ninja.attack(bear)
p bear
