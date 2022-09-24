def prime? number
  return false if number < 2

  (2...number).each do |elem|
    return false if number % elem == 0
  end
  true
end


p prime? 2 #true
p prime? 3 #true
p prime? 4 #false
p prime? 5 #true
p prime? 11 #true
p prime? -2 #false
