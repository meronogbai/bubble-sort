def bubble_sort(arr)
  # bubble sort
  n = arr.length
  (n - 1).times do
    (0..(n - 2)).each do |num|
      arr[num], arr[num + 1] = arr[num + 1], arr[num] if arr[num] > arr[num + 1]
    end
  end
  arr
end

test_array = [4, 3, 78, 2, 0, 2]

puts bubble_sort(test_array)

def bubble_sort_by(array)
  # bubble sort using yield
  n = array.length
  (n - 1).times do
    (0..(n - 2)).each do |num|
      check = yield array[num], array[num + 1]
      array[num], array[num + 1] = array[num + 1], array[num] if check.positive?
    end
  end
  array
end

test = bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end

puts test
