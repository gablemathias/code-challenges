
string = '¥1000'

def count_multibyte_char(str)
  str.each_char.count { |char| char.bytesize > 1 }
end

puts count_multibyte_char(string)
