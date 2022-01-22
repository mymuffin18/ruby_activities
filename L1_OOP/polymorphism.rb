# Polymorphism


class Shape
    attr_reader :width, :height    
    def initialize(x, y, width, height)
        @x = x 
        @y = y 
        @width = width
        @height = height
    end
    
    def get_area
        return width * height
    end


   def move_left
        @x += 10
   end

   def print_pos
    puts "Position: #{get_pos}"
   end
   def get_pos
    return [@x, @y]
   end

end

class Square < Shape

    def initialize(x, y, size)
        return super(x, y, size, size)
    end
    
end

class Circle < Shape
    def initialize(x, y, radius)
        @x = x
        @y = y
        @radius = radius
    end


    def area_segment(angle)
        a = radian(angle)

        return ((a - Math::sin(a)) / 2) * (@radius ** 2)
    end

    def get_area
        return Math::PI * (@radius ** 2)
    end

    private
    def radian(angle)
        return angle * (Math::PI / 180)
    end
end



square = Square.new(50, 50, 40)
circle = Circle.new(50, 80, 50)
rect = Shape.new(10, 10, 500, 200)

puts square.get_area
puts circle.get_area
puts rect.get_area
circle.print_pos
puts circle.move_left
circle.print_pos

