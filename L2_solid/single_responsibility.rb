


def logger(message)
    puts message
end



class Bag
    def initialize(max_size)
        @max_size = max_size
        @items = []
    end

    def add_item(item)
        if @items.length - 1 < @max_size
            @items.push(item)
            logger("#{item } added.")
        else
            logger("Bag is full")
        end
    end

    def remove_top(item)
        if @items.length - 1 > 0
            logger("#{item.pop} removed.")
        else
            logger("Error: bag is empty")
        end

    end

    def print_items
        logger("items #{@items}")
    end
end

b = Bag.new(3)
b.add_item("notebook")
b.add_item("pencil")
b.add_item("book")
b.add_item("book")
b.add_item("book")

