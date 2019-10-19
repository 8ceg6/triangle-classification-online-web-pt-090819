require_relative '../lib/triangle'
class Triangle

attr_accessor :a, :b, :c

 def initalize(a, b, c)
  @a = a
  @b = b
  @c = c
 end


 def kind
     validate_triangle
     if a_side == b_side && b_side == c_side
       :equilateral
     elsif a_side == b_side || b_side == c_side || c_side == a_side
       :isosceles
     else
       :scalene
     end
   end


    def validate_triangle
      valid_triangle = [
        (a_side + b_side > c_side),
        (a_side + c_side > b_side),
        (b_side + c_side > a_side)
      ]
      [a_side, b_side, c_side].each do |side|
        valid_triangle << false if side <= 0
        raise TriangleError if valid_triangle.include?(false)
      end
    end



class TriangleError < StandardError
end

end

# attr_accessor :a, :b, :c 
 
#   def initialize
#       @a = a 
#       @b = b 
#       @d = c
#   end 
  
#   def kind(a, b, c) 
     
#   if ((a == b) && (a == c) && (b == c))
#     return :equilateral
#   elsif ((a == b) || (a == c) || (b == c))
#     return :isosceles
#   else
#     return :scalene
#   end
#   end
  
# #   def triangle_type1 
# #       a.positive? && b.positive? && c.positive?
# #   end 
  
# #   def triangle_type2
# #       a + b > c && a + c > b && b + c > a 
# #   end
# end

# class TriangleError < StandardError
# end 





