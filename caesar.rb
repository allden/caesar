=begin
incase you're not familiar with what the #ord method does
it returns the codepoint of the first character in a string
"aether".ord will return 97 and "zord".ord will return 122
the #chr method transforms codepoint back into characters
so if we had ("a".ord+3).chr we would get the letter "d"
=end
def caesar_cipher(word, key=1)
    # make word into an array so we can iterate through every character
    word = word.split('')
    for i in 0...word.length
        # make sure that the character is in the alphabet
        if (('a'..'z').include?word[i]) || (('A'..'Z').include?word[i])
            # if it exceeds the codepoint value of uppercase characters
            if word[i].ord+key > 90 && (('A'..'Z').include?word[i])
                word[i] = ((word[i].ord+key)-26).chr
            # if it exceeds the codepoint of lowercase chars
            elsif word[i].ord+key > 122 && (('a'..'z').include?word[i])
            word[i] = ((word[i].ord+key)-26).chr
            else
                word[i] = (word[i].ord+key).chr
            end
        end
    end
    word = word.join('')
    return word
end

puts "SYMBOLS"
puts caesar_cipher("!@##%$%$^%^^", 5)
puts "LETTERS"
puts caesar_cipher("The man struggled with caesar ciphers.", 5)
puts "NUMBERS"
puts caesar_cipher("4353464575467567", 5)