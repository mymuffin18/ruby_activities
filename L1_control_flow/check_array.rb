# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

arr = [1, 3, 5, 7, 9, 11]



# using binary search
def find_num(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return true
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return false
end


puts find_num(arr, 3)