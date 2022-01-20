

class Person
    attr_accessor :name
    def initialize(name, age)
      @name = name
      @age = age
    end


    def print
        puts "Hello, I'm #{@name} and I am #{@age} years old."
    end
end


josh = Person.new("Joshua Gorose", 19)

josh.name = "kit"
puts josh.name