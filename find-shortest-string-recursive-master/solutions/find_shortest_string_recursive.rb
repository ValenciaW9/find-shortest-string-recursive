def find_shortest_string_recursive(arr)
  return arr.first if arr.length == 1

  result = find_shortest_string_recursive(arr[1..-1])

  arr.first.length <= result.length ? arr.first : result
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts find_shortest_string_recursive(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts find_shortest_string_recursive(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts find_shortest_string_recursive(['flower', 'juniper', 'lily', 'dandelion'])

  puts

  puts "Expecting: 'ardvark'"
  puts find_shortest_string_recursive(['ardvark'])

 

  
  def shortest_common_substr(strings)
    shortest = strings.min_by(&:length)
    shortest.length.downto(0) do |len|
      0.upto(shortest.length - len) do |start|
        substr = shortest[start, len]
        return substr if strings.all? { |str| str.include?(substr) }
      end
    end
  end
  
  puts "Expecting: 'hi'"
  puts shortest_common_substr(['cat', 'hi', 'dog', 'an'])




# Please add your pseudocode to this file
  # The `shortest_common_substr` function finds the shortest common
  # substring among a given array of strings.
  # 
  # Args:
  #   strings: ['cat', 'hi', 'dog', 'an']
  # 
  # Returns:
  #   The code is returning the shortest common substring among the
  # given array of strings. In this case, it is expecting the output to
  # be 'hi'.


##
# The `find_shortest_string_recursive` function recursively finds the shortest string in an array by
# comparing each element to the result of a recursive call with a smaller array.
# 
# Args:
#   arr: An array of strings
# 
# Returns:
#   The code is returning the shortest string in the given array.

#############################################################################################
# if array length == 1:
#  return first element
#
# recursively traverse the array and store the resulting element in a variable called result
#
# if the first element's length is <= the result's length:
#   return the first element
# else:
#   return the result
#############################################################################################

# And a written explanation of your solution
#############################################################################################
# We can start coding this solution with the base case: if there is only one element in the array
# return it. After that, we need to compare every element in the array to find the shortest. We
# do this by recursively calling the method with a smaller and smaller array. Since we're removing
# the first element from the array each time we recurse, this means we can compare the return value
# of our recursive call to the first element in the array in that frame. The shortest one gets
# returned up the stack. For example, if we had an array of two elements ['cat', 'dogs'], the
# initial call would occur, and then a recursive call would occur with the argument ['dogs']. 'dogs'
# would then be returned up the stack, since the base case would be triggered, so 'dogs' would now
# be stored in result. On the last line 'cat' is compared to 'dogs', and the shorter one is returned.
end
