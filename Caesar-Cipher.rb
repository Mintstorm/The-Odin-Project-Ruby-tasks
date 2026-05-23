# frozen_string_literal: true

#Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift:
# Quick Tips:
#
#     You will need to remember how to convert a string into a number.
#     Don’t forget to wrap from z to a.
#     Don’t forget to keep the same case.
#     The Wikipedia quote discusses a Caesar cipher using a left shift.

puts("Enter you message to Caesar")
caesar_message = gets.chomp
puts("Enter a a number to shift letters")
shift = gets.chomp.to_i

def ascii_check(char, shift)
  if char.ord >= 97 and char.ord <= 122
    shifted_code = char.ord + shift
    if shifted_code > 122
      outcharded = shifted_code - 122
      outcharded = outcharded + 96
      shifted_code = outcharded.chr
    else
      shifted_code.chr
    end
  elsif char.ord >= 65 and char.ord <= 90
    shifted_code = char.ord + shift
    if shifted_code > 90
      outcharded = shifted_code - 90
      outcharded = outcharded + 64
      shifted_code = outcharded.chr
    else
      shifted_code.chr
    end
  else
    char
  end
end
def cipher_process(message, shift)
  puts("Starting cipher process!")
  message = message.strip
  unless message.is_a?(String)
    return "Thats not a string!"
  end
  ciphered = message.chars.map do |char|
    ascii_check(char,shift)
  end
  puts ciphered.join("")
end

cipher_message = cipher_process(caesar_message, shift)
