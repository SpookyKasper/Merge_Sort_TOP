
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
one_value_arr = [2]

puts "This is the value return by the attempt to split an array of 1 item in a left_half #{one_value_arr.take(one_value_arr.length/2)}"
puts "This is the value returned by the attempt to split an array of 1 item in a right_half #{one_value_arr.drop(one_value_arr.length/2)}"

def merge(left, right)
end

# Merg algo:
#


def merge_sort(array, sorted=[])
  if array.length == 1
    puts "#{array} is sorted, ready for merge"
    return array
  end
  left_half = array.take(array.length/2)
  p "This is the left half #{left_half}"
  right_half = array.drop(array.length/2)
  p "This is the righ half #{right_half}"
  sorted_left = merge_sort(left_half, sorted)
  sorted_right = merge_sort(right_half, sorted)
  if sorted_left[0] > sorted_right[0]
    sorted << sorted_right[0]
    sorted << sorted_left[0]
  else
    sorted << sorted_left[0]
    sorted << sorted_right[0]
  end
  p "This is the sorted array #{sorted}"
  p "This is the sorted_left #{sorted_left}"
  p "This is the sorted_right #{sorted_right}"
  p "This is the first item of the sorted left #{sorted_left[0]}"
  p "This is the first item of the sorted right #{sorted_right[0]}"
  p sorted_right
end


merge_sort(my_simples_array)
