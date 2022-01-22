# Abstraction

class Circle
    def initialize( radius)
        @radius = radius
    end


    def area_segment(angle)
        a = radian(angle)

        return ((a - Math::sin(a)) / 2) * (@radius ** 2)
    end

    private
    def radian(angle)
        return angle * (Math::PI / 180)
    end
end


c = Circle.new(60)

puts c.area_segment(124)