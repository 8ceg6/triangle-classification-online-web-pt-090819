require_relative '../lib/triangle'
class Triangle
 attr_accessor :a, :b, :c 
 
  def initialize(a,b,c)
      @a = a 
      @b = b 
      @d = c
  end 
  
  def kind 
      if triangle_type1 == true && triangle_type2 == true 
        puts true 
      else 
        raise TriangleError
      end 
      
      if a == b && b == c && a == c 
        :equilateral 
      elseif a != b && b != c && a != c 
        :scalene 
      else 
        :isosceles
      end 
  end
  
  def triangle_type1 
      a.positive? && b.positive? && c.positive?
  end 
  
  def triangle_type2
      a + b > c && a + c > b && b + c > a 
  end
end

class TriangleError < StandardError
end 





