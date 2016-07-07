class Vehicle
  def initialize(brand, model, year)
    @b = brand
    @model = model
    @year = year
  end
  def model
    @model
  end
  def change_model=(input)
    @model = input
  end
end
new_car = Vehicle.new('Toyota', 'Corolla', 2004)
puts new_car.model
new_car.change_model = 'Model S'
puts new_car.model
