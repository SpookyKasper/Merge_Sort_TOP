
#Build a method #merge_sort that takes in an array and returns a sorted array,
# using a recursive merge sort methodology.
# Tips:
# Think about what the base case is and what behavior is happening again and again
# and can actually be delegated to someone else (e.g. that same method!).
# It may be helpful to check out the background videos again if you don’t quite
# understand what should be going on.


# Pseudo code for recursive merge_sort method:

# Build a recursive merge sort that takes an array as a parameter
# and returns a sorted version of that array

# Base case, if the array is of length 1 then the array is sorted

# divide the array in 2 pieces as even as possible
# Sort the left piece, aka call the recursive method on the left piece
# Sort the right piece, aka call the recursive method on the right piece
# Merge the two pieces
  # declare an empty array named 'sorted'
  # compare the first element of the left piece to the first element of the right piece
  # shift the smaller element and push it to 'sorted'
  # if both left and right pieces are empty
  # return cause merge is complete

my_array = [4, 5, 7, 1, 3, 6, 2]
my_simples_array = [2, 1, 3]

def merge_sort(array, sorted=[], round=0)
  return array if array.length == 1

  left_half = array.take(array.length/2)
  right_half = array.drop(array.length/2)
  p "This is the left half #{left_half}"
  p "This is the right half #{right_half}"
  s_left = merge_sort(left_half, sorted)
  s_right = merge_sort(right_half, sorted)
  p "This is the sorted left #{s_left}"
  p "This is the sorted right #{s_right}"
  sorted = []
  until s_left.empty? || s_right.empty?
    if s_left[0] < s_right[0]
      puts "left value #{s_left[0]} goes"
      sorted << s_left.shift(1)
    else
      puts "right value #{s_right[0]} goes"
      sorted << s_right.shift(1)
    end
  end
  if s_left.empty?
    s_right.each { |el| sorted << el }
  end
  if s_right.empty?
    s_left.each { |el| sorted << el }
  end
  p "This is the soted array #{sorted.flatten}"
  sorted.flatten
end


merge_sort(my_array)
