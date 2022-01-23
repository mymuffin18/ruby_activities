
class Shape

    def get_area
    end
end


class Square < Shape
    def initialize(length)
        @length = length
    end

    def get_area
        return @length ** 2
    end
end

class Circle < Shape
    def initialize(radius)
        @radius = radius
    end

    def get_area
        return Math::PI * (@radius ** 2)
    end
end



shapes = [ Square.new(50), Circle.new(100)]
shapes.each do |i|
    puts i.get_area
end