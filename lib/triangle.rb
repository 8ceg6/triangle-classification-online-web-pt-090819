lib/triangle.rb
class Triangle
 attr_accessor :a, :b, :c 
 
  def initialize(a,b,c)
      @a = a 
      @b = b 
      @d = c
  end 
  
  def kind 
      triangle_type 
  end 
end
