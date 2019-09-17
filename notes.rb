class Shoe 
  attr_accessor :brand, :color, :size, :material
  
  def initialize(brand)
    @brand = brand
  end 
  
  def condition=(condition)
    @condition = condition
  end 
    
  def condition
    @condition
  end 
  
  def cobble
    puts "Your shoe is as good as new!"
    @condition = "new"
  end 
  
end



class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !(BRANDS.include?(@brand))
      BRANDS << @brand
    end
  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end


