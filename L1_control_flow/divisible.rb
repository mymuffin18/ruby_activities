# Below we have given you an array and a number.
# Write a program that checks to see if the number is divisible by 2 and store them into a new array.


arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]


def get_divisible_by_two(arr)
    new_array = Array.new
    for i in arr
        if i % 2 == 0
            new_array.push(i)
        end
    end

    return new_array
end


new_array = get_divisible_by_two(arr)

puts new_array