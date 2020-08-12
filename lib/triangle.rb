class Triangle
  
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
    else
      ":equilateral"
    end
    
  end 
  
  
  class TriangleError < StandardError
    def message 
      "ERROR"
    end
  end
  
end
