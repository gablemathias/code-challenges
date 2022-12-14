def func_any(hash)
  # Check and return true if any key object within the hash is of the type Integer
  # If not found, return false.
  hash.any? { |key, _| key.is_a? Integer }
end

def func_all(hash)
  # Check and return true if all the values within the hash are Integers and are < 10
  # If not all values satisfy this, return false.
  hash.all? do |_, value|
    (value.is_a? Integer) && (value < 10)
  end
end

def func_none(hash)
  # Check and return true if none of the values within the hash are nil
  # If any value contains nil, return false.
  hash.none? { |_, values| values.nil? }
end

def func_find(hash)
  # Check and return the first object that satisfies either of the following properties:
  #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20
  #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
  hash.find do |key, value|
    ([key, value].all? Integer) && (value < 20) ||
      ([key, value].all? String) && value.start_with?('a')
  end
end

hash = { something: 1, 'aaa' => 3, 'a' => 1, 'b' => 2, 'c' => 3, 'AA' => 'abc' }

p func_any(hash)
p func_all(hash)
p func_none(hash)
p func_find(hash)
