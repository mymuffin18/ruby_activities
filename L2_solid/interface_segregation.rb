
module Attack
    def attack(target)
        puts "#{@name} attacking #{target.name}"
        target.take_damage(@attack_damage)
    end
end

module TakeDamage
    def take_damage(amount)
        @health -= amount
        puts "#{@name} has #{@health} hp remaining."
    end 
end

module Movable
    def move
        puts "#{@name} moving 5 steps."
    end
end

class Entity
    
    def initialize(name, health)
        @name = name
        @health = health
    end
    protected attr_reader :name
end


class Character < Entity
    include Movable, TakeDamage, Attack
    def initialize(name, health, attack_damage)
        super(name, health)
        @attack_damage = attack_damage
    end

end

class Npc < Entity
    include Movable, TakeDamage
end

class Turret < Entity
    include TakeDamage, Attack
    def initialize(name, health, attack_damage)
        super(name, health)
        @attack_damage = attack_damage
    end
end

hero = Character.new("hero", 150, 3)
turret = Turret.new("turret", 100, 50)
npc = Npc.new('npc', 200)


hero.move
hero.attack(turret)
turret.attack(hero)
hero.attack(npc)