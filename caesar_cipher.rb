# add a method to keep the uppercase if uppercase
def caesar_cipher(string, int_shift_factor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  input_array = string.split('')

  input_array_shifted = input_array.map do |letter|
    (alphabet.index(letter) + int_shift_factor) % alphabet.length
  end

  input_array_shifted.reduce('') { |acc, shifted_letter_index| acc + alphabet[shifted_letter_index] }
end

puts caesar_cipher('zab', 2)
