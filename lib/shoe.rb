require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

end

nike = Shoe.new("nike")

nike.brand = "Adidas"
nike.brand = "Asics"
nike.brand = "New Balance"
nike.brand = "Asics"
nike.brand = "New Balance"


puts Shoe::BRANDS
