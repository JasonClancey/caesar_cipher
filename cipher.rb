def caesar_cipher(string, shift_factor, new_string = '')

lower = ('a'..'z').to_a
upper = ('A'..'Z').to_a


string.each_char do |character| 
    if lower.include?(character)
        idx = lower.index(character)
        new_string.insert(-1, lower[(idx + shift_factor) % 26])
    elsif upper.include?(character)
        idx = upper.index(character)
        new_string.insert(-1, upper[(idx + shift_factor) % 26])
    else new_string += character
    end
end
puts new_string
end

caesar_cipher('Hello, how are you?', -1)