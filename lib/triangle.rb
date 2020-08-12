class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = side1, side2, side3
  end 
    
    def valid?
      a = @side1
      b = @side2
      c = @side3
      if @sides.any?{|side| side <=0}
        false
        elsif a+b <= c || a+c <= b || b+c <= a
        false 
      else 
        true 
      end 
    end 
    
    def equilateral?
      @sides.uniq.count == 1
    end 
    
    def isoceles?
      @sides.uniq.count == 2
    end 
    
    def scalene?
      @sides.uniq.count == 3
    end 
  
  def kind 
    if !valid?
        raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isoceles? 
       :isosceles
    elsif scalene?
       :scalene
    end
  end 
  
  class TriangleError < StandardError
  end
  
end
