class Fighter
  attr_reader :name
  attr_accessor :health, :power
  def initialize(name, health, power)
    @name = name
    @health = health
    @power = power
  end
  def attack(enemy)
    enemy.lose_health(self.power, enemy.health)
  end
  def lose_health(enemy_power, health)
    self.health -= enemy_power
  end
end

boxer1 = Fighter.new('Rocky', 100, 15)
boxer2 = Fighter.new('Rob', 200, 30)
boxer2.attack(boxer1)
boxer1.attack(boxer2)
p boxer2
p boxer1
