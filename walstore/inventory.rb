require_relative 'admin'
require_relative 'shopper'
class Inventory
  attr_reader :person
  def initialize(item, quantity, price, person)
    @item = item
    @quantity = quantity
    @price = price.to_f
    @person = person
  end
  def purchase
    total_discounted  = @price * @person.discount
    @price -= total_discounted
    self.prompt
  end
  def prompt
    puts "Hello #{self.person.name}, for you each one costs #{@price}, how many would you like to buy"
    quant = gets.chomp.to_i
    self.purchase = quant
  end
  def purchase=(how_many)
    @quantity-= how_many
    total = @price * @quantity
    puts "Great #{person.name} you have #{person.money -= total} left"
  end
end
wal = Admin.new('Walid', 10000)
rob = Shopper.new("Rob", 2000)
phone = Inventory.new('Nexus', 2, 500, wal)
phone.purchase
phone = Inventory.new('Nexus', 2, 500, rob)
phone.purchase
