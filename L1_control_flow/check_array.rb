# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

arr = [1, 3, 5, 7, 9, 11]

# def find_num(arr, x) 
#     low = 0
#     high = arr.length - 1
  
#     while low != high
#         mid = low + high / 2
#         puts arr[mid]
#         if arr[mid] == x
#             return true
#         elsif arr[mid] < x
#             low = mid
#         elsif arr[mid] > x
#             high = mid
#         end 
#     end
#     return false
# end

def binary_search(n, arr)
    middle = arr[arr.length / 2]
    i = 0
    j = arr.length - 1
  
    while i < j
      if middle == n
        return true
      elsif middle < n
        i = middle
        middle = i + j / 2
      else
        p "Middle is greater than n"
        j = middle
        p "j: #{j}"
        middle = i + j / 2
        p "middle: #{middle}"
      end
    end
    false
  end 

binary_search(arr, 4)