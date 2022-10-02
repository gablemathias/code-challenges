# generates the full names of people giver their first name, followed by
# all the middle names and their last name



def full_name(first_name, *middle_name, last_name)
  unless middle_name.empty?
    return "#{first_name} #{middle_name.join(' ')} #{last_name}"
  else
    return "#{first_name} #{last_name}"
  end
end

# puts full_name('Gabriel') # error OK
puts full_name('Gabriel', 'Gustavo', 'Mathias')
puts full_name('Luiz', 'Gustavo', 'Pereira', 'Silva', 'Melo')
puts full_name('James', 'Bilson')
