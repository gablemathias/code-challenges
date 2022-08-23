# str = "Hello Word!"

# puts str[str.size-1]

# p str[-1]

# p str[-2]

# p str[0]

# p str[0, 4]

# p str[-2, 4]

# str[str.size, 0] = " It's so amazing, right?"

# p str

string = '321-20.01-41.22'

def serial_average(str)
  float_1 = str[4,8].to_f
  float_2 = str[10,15].to_f
  serial = str[0, 3]
  average = (float_1 + float_2) / 2
  average = '%.2f' % average #string format operator

  "#{serial}-#{average}"
end

p serial_average('002-10.00-20.00')
