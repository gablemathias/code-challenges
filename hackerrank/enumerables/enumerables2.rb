def skip_animals(animals, skip)
  # Your code here
    array = []
    animals.each_with_index do |animal, index|
       array << "#{index}:#{animal}" if index >= skip
    end
    array
end
