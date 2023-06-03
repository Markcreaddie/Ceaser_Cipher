#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string


def ceaser_cipher(string,shift_factor)
    down_ascii_chars=("a".."z").map{|letter| letter}
    up_ascii_chars=("A".."Z").map{|letter| letter}
    chars= string.split("")
    shifted_chars= chars.map { |char| 
        if up_ascii_chars.include?(char)
            i=up_ascii_chars.find_index(char.upcase)
            up_ascii_chars[(i+shift_factor)%26]
        elsif down_ascii_chars.include?(char)
            i=down_ascii_chars.find_index(char.downcase)
            down_ascii_chars[(i+shift_factor)%26]
        else
            char
        end
    }
    return shifted_chars.join()
end

p ceaser_cipher("Hello, World!",75)
