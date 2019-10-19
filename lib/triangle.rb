lib/triangle.rb
class Triangle
 attr_accessor :a, :b, :c 
 
  def initialize(a,b,c)
      @a = a 
      @b = b 
      @d = c
  end 
  
  def kind 
      if triangle_type1 == true && triangle_type == true 
        puts true 
      else 
        raise T
      end 
  end 
end
