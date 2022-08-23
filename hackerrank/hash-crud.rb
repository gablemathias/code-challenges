hackerrank = Hash.new

# hackerrank[543121] = 100

# 1
hackerrank.store(543121, 100)
# hackerrank.store('something', 100)
# hackerrank.store(12, 100)

# 2
hackerrank.keep_if { |key, value| key.is_a? Integer }

# 3
hackerrank.delete_if { |key, value| key.even? }

p hackerrank
