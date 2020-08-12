class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
    
    def valid?
      if self.find {|num| num <= 0)
        false
        elsif #inequality
        false 
      else 
        true 
      end 
    end 
    
    def equilateral
      @side1 == @side2 && @side1 == @side3
    end 
  
  def kind 
    if !valid?
       begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif equilateral?
      :equilateral
      # elsif isoceles? 
      # :isoceles
      # elsif @side1 != @side2 != @side3
      # :scalene
    end
  end 
  
  class TriangleError < StandardError
    def message 
      "ERROR: Not a valid triangle, please try again."
    end
  end
  
end
