require_relative '../lib/triangle'
class Triangle
 attr_accessor :a, :b, :c 
 
  def initialize
      @a = a 
      @b = b 
      @d = c
  end 
  
  def kind(a, b, c) 
     
  if ((a == b) && (a == c) && (b == c))
    return :equilateral
  elsif ((a == b) || (a == c) || (b == c))
    return :isosceles
  else
    return :scalene
  end
  end
  
#   def triangle_type1 
#       a.positive? && b.positive? && c.positive?
#   end 
  
#   def triangle_type2
#       a + b > c && a + c > b && b + c > a 
#   end
end

class TriangleError < StandardError
end 





