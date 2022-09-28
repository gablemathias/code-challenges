def parcial_array(array, start_point = 1)
  return array[start_point..]
end

array = [1,4,6,3,4,6,2,8,4]

p parcial_array(array, 3)  # [3, 4, 6, 2, 8, 4]
p parcial_array(array, 5)  # [6, 2, 8, 4]
p parcial_array(array, 0)  # [1, 4, 6, 3, 4, 6, 2, 8, 4]
p parcial_array(array)     # [4, 6, 3, 4, 6, 2, 8, 4]
p parcial_array(array, -1) # [4]
