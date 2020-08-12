class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
    
    def valid?
      a = @side1
      b = @side2
      c = @side3
      if self.find {|side| side <= 0)
        false
        elsif a+b <= c || a+c <= b || b+c <= a
        false 
      else 
        true 
      end 
    end 
    
    def equilateral?
      @side1 == @side2 && @side1 == @side3
    end 
    
    def isoceles?
      
    end 
    
    def scalene?
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
    elsif isoceles? 
       :isoceles
    elsif scalene?
       :scalene
    end
  end 
  
  class TriangleError < StandardError
    def message 
      "ERROR: Not a valid triangle, please try again."
    end
  end
  
end
