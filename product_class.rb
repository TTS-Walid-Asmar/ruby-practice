class Product
  def initialize(item, price, quantity)
    @item, @price, @quantity = item, price, quantity
  end
  def item
    @item
  end
  def sell(input)
    if input > @quantity
      puts "Sorry, but you requested #{input - @quantity} more than we have in stock."
    else
      @quantity -= input
      puts "You purchased #{input} #{@item}'s"
    end
  end
  def quantity
    @quantity
  end
  def price
    @price
  end
end
new_product = Product.new('baseball bat', 5, 10)
puts new_product.sell(6)
