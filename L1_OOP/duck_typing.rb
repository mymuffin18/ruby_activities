

class Animal
    def initialize(name="Animal")
        @name = name
    end

    def make_noise
        puts "#{@name} making noise."
    end
end

class Dog < Animal

    def make_noise
        puts "#{@name} barking."
    end
end

class Cat < Animal

    def make_noise
        puts "#{@name} meows."
    end
end


animals = [Animal.new, Dog.new('Dog'), Cat.new('Cat')]

animals.each do |animal|
    animal.make_noise
end