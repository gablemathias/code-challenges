# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compare_triplets(arr1, arr2)
  # Write your code here
  result = [0, 0]
  arr1.each_with_index do |_, index|
    if arr1[index] > arr2[index]
      result[0] += 1
    elsif arr1[index] < arr2[index]
      result[1] += 1
    end
  end
  result
end

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

puts(a, b)
