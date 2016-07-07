require_relative 'fighter'
class Bear < Fighter
  def initialize(name, health, power)
    super(name, health, power)
  end
  def attack(enemy)
    puts "Rawr!!"
    enemy.lose_health(self.power, enemy.health)
  end
end
bear = Bear.new('Billy', 100, 10)
p bear
