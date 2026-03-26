# add a method to keep the uppercase if uppercase
def caesar_cipher(string, int_shift_factor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  input_array = string.split('')

  input_array_shifted = input_array.map do |letter|
    if alphabet.include?(letter.downcase)
      (alphabet.index(letter) + int_shift_factor) % alphabet.length
    else
      letter
    end
  end
  puts input_array_shifted
end

puts caesar_cipher('abc !', 1)
