test_array = [4,3,78,2,0,2]

def bubble_sort(arr)
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

puts bubble_sort(test_array)