test_array = [4,3,78,2,0,2]
print test_array
def bubble_sort(list)
  #takes and array and returns a sorted array
  n=list.length

  for i in 0..(n-2) do
    if list[i] > list[i+1]
      # arr[i+1], arr[i] = arr[i], arr[i+1]
    end
  end
end

print bubble_sort(test_array)