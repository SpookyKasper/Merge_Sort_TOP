
#Build a method #merge_sort that takes in an array and returns a sorted array,
# using a recursive merge sort methodology.
# Tips:
# Think about what the base case is and what behavior is happening again and again
# and can actually be delegated to someone else (e.g. that same method!).
# It may be helpful to check out the background videos again if you don’t quite
# understand what should be going on.


# Pseudo code for recursive merge_sort method:
# Given an array divide that array in 2 pieces as even as possible
# Sort the left piece, aka call the recursive method on the left piece
# Sort the right piece, aka call the recursive method on the right piece
# Merge the two pieces in an ordered way

my_array = [4, 5, 7, 1, 3, 6, 2]


def merge_sort(array)
  left_half = array.take(array.length/2)
  right_half = array.drop(array.length/2)
  p left_half
  p right_half
end


merge_sort(my_array)
