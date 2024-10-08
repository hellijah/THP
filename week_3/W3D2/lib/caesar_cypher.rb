def caesar_cipher(string, shift)
    encrypted_string = ""
  
    string.each_char do |char|
      if char.match(/[a-z]/)
        # cypher normal letter 
        encrypted_string += ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
      elsif char.match(/[A-Z]/)
        # cypher caps letter
        encrypted_string += ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
      else
        # else special caracters
        encrypted_string += char
      end
    end
  
    return encrypted_string
  end
