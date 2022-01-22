# Encapsulation 
class Shape
    attr_accessor :width, :height
    def initialize(width, height)
      @width = width
      @height = height
    end

    def get_area
     return @width * @height
    end

end


square = Shape.new(5, 10)

puts square.get_area