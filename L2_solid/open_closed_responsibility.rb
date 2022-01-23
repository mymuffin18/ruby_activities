

class Bird 

    def initialize(name)
        @name = name
    end

    def move
        puts "#{@name} is flying."
    end
end

class Penguin < Bird

    def move
        puts "#{@name} is swimming"
    end
end

class Chicken < Bird

    def move
        puts "#{@name} is swimming"
    end
end


birds = [Penguin.new("Penguin"), Chicken.new("Chicken run"), Bird.new("Pigeon")]

birds.each do |bird|
    bird.move
end