def select_arr(arr)
    # select and return all odd numbers from the Array variable `arr`
    arr.select { |number| number.odd? }
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
  arr.reject { |number| (number % 3).zero? }
end

def delete_arr(arr)
  # delete all negative elements
  arr.delete_if(&:negative?)
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
  arr.keep_if(&:positive?)
end


array = [-1, -2, -3, 0, 1, 2, 3, 4, 5]

p select_arr(array)
p reject_arr(array)
p delete_arr(array)
p keep_arr(array)
