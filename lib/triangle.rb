class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
    if !((@side1 +@side2) > @side3)
       begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @side1 == @side2 == @side3
      :equilateral
      elsif @side1 == @side2 || @side == @side3
      :isoceles
      elsif @side1 != @side2 != @side3
      :scalene
    end
    
  end 
  
  
  class TriangleError < StandardError
    def message 
      "ERROR"
    end
  end
  
end
