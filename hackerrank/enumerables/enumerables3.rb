##Swap alphabet letters usint ROT13

def rot13(secret_messages)
  # your code here
  secret_messages.split.map do |item|
    item.tr('abcdefghijklmnopqrstuvwxyz','NOPQRSTUVWXYZABCDEFGHIJKLM').downcase
    end
end

puts rot13('hello fucking world')
