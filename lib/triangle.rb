class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
    if !valid?
       begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
      # elsif @side1 == @side2 || @side1 == @side3 || 
      # :isoceles
      # elsif @side1 != @side2 != @side3
      # :scalene
    end
    
    def valid?
      if self.find {|num| num <= 0)
        false
    end 
    
  end 
  
  
  class TriangleError < StandardError
    def message 
      "ERROR"
    end
  end
  
end
