
def merge(left, right, sorted=[])
  until left.empty? || right.empty?
    left[0] < right[0] ? sorted << left.shift : sorted << right.shift
  end
  if left.empty? then right.each { |el| sorted << el } end
  if right.empty? then left.each { |el| sorted << el } end
  sorted
end

def merge_sort(array, round=0)
  return array if array.length == 1
  left_half = array.take(array.length/2)
  right_half = array.drop(array.length/2)
  s_left = merge_sort(left_half)
  s_right = merge_sort(right_half)
  merge(s_left, s_right)
end

my_array = [4, 5, 7, 1, 3, 6, 2]
my_simplest_array = [2, 1, 3]

p merge_sort(my_array)
p merge_sort(my_simplest_array)
