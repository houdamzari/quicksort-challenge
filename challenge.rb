def simple_quicksort(array)
  return array if array.length <= 1

  pivot = array[0]
  left = []
  right = []

  array[1..-1].each do |num|
    if num <= pivot
      left << num
    else
      right << num
    end
  end

  sorted_left = simple_quicksort(left)
  sorted_right = simple_quicksort(right)

  sorted = sorted_left + [pivot] + sorted_right
  puts sorted.join(' ')
  sorted
end