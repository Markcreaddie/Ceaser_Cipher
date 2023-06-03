#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
def shift_char(char,chars,shift_factor)
    i=chars.find_index(char)
    chars[(i+shift_factor)%26]
end

def ceaser_cipher(string,shift_factor)
    down_ascii_chars=("a".."z").map{|letter| letter}
    up_ascii_chars=("A".."Z").map{|letter| letter}
    chars= string.split("")
    shifted_chars= chars.map { |char| 
        if up_ascii_chars.include?(char)
            shift_char(char,up_ascii_chars,shift_factor)
        elsif down_ascii_chars.include?(char)
            shift_char(char,down_ascii_chars,shift_factor)
        else
            char
        end
    }
    return shifted_chars.join()
end

p ceaser_cipher("Hello, World!",75)
