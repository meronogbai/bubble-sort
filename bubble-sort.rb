def bubble_sort(arr)
  #bubble sort
  n = arr.length
    (n-1).times do
      for num in 0..(n-2)
        if arr[num] > arr[num+1]
          arr[num], arr[num+1] = arr[num+1], arr[num]
        end
      end
    end
  return arr
end

test_array = [4,3,78,2,0,2]

puts bubble_sort(test_array)

def bubble_sort_by(array)
  #bubble sort using yield
  n = array.length
    (n-1).times do
      for num in 0..(n-2)
        if yield(array[num], array[num+1]) > 0
          array[num], array[num+1] = array[num+1], array[num]
        end
      end
    end
  return array
end
  
puts (bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end)