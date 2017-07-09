def rot13(message)
  alphabet = ('A'..'Z').to_a
  new_chars = message.chars.map do |char|
    #lower = nil
    if letter?(char)
      if /[[:lower:]]/.match(char)
        lower = true
        char = char.upcase
      end

      index = alphabet.find_index(char)
      char = alphabet[index-13]

      if lower
        char = char.downcase
      end
      char
    else
      char
    end
  end
  return new_chars.join
end

def numeric?(lookAhead)
  lookAhead =~ /[0-9]/
end

def letter?(lookAhead)
  lookAhead =~ /[A-Za-z]/
end
