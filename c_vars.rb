class Inventory
  @@owner = 'Walid'
  attr_accessor :name, :brand
  def initialize(name, brand)
    @name = name
    @brand = brand
  end
  def self.owner=(new_owner_name)
    @@owner = new_owner_name
  end
  def self.owner
    @@owner
  end
end

my_stuff = Inventory.new('Macbook Pro', 'Apple')
puts Inventory.owner
Inventory.owner = "Abdel"
puts Inventory.owner
