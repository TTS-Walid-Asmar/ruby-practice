# class Pet
#   attr_reader :name
#   attr_writer :name
#   def initialize(name='baby')
#     @name = name
#   end
#   # def change_name=(value)
#   #   @name = value
#   # end
#   def what
#     @name
#   end
# end
# b = Pet.new('mar')
# puts b.name
# puts b.name = 'wa'
# puts b.what
class Inventory
  @@owner = 'Walid'
  attr_accessor :name, :brand, :owner

  def initialize(name, brand)
    @name, @brand = name, brand
  end
  # def self.owner=(new_owner_name)
  #   @@owner = new_owner_name
  # end
  # def self.owner
  #   @@owner
  # end
end

my_stuff = Inventory.new('Macbook Pro', 'Apple')
puts Inventory.owner
Inventory.owner = "Abdel"
puts Inventory.owner
