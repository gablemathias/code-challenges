# return sum of arrays

arr = [1,2,3,4,-1,-4,0,20,300,'2','5',"teste"]

new_array = arr.select{ |number| number if number.is_a? Integer }.sum

p new_array
