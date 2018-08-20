require 'pry'

class Triangle
  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene
  
  def initialize(a, b, c)
    @a = a 
    @b = b
    @c = c
  end
  
  def kind()
    
    def valid_triangle?()
      if a < 0 || b < 0 || c < 0
      raise TriangleError
      
      elsif !(a + b) > c || !(b + c) > a || !(a + c) > b
        raise TriangleError
        
      else return true
       
      end
    end
  
    
    if valid_triangle?() == true
      binding.pry
      if (a == b && b == c)
        return :equilateral
      elsif (a == b || b == c)
        return :isosceles
      else
        return :scalene
    end
  end
  end
  
  class TriangleError < StandardError
  end
  
end
