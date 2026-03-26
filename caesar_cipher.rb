# add a method to keep the uppercase if uppercase
def shift_chars_with_case(input, int_shift_factor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  input_array = input.split('')
  input_array.map do |letter|
    if alphabet.include?(letter.downcase)
      shifted_index = (alphabet.index(letter.downcase) + int_shift_factor) % alphabet.length
      { shifted_index => { is_upper?: letter == letter.upcase } }
    else
      { letter => { is_upper?: false } }
    end
  end
end

# change to map instead
def caesar_cipher(string, int_shift_factor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  input_hash_shifted = shift_chars_with_case(string, int_shift_factor)
  input_hash_shifted.reduce('') do |_acc, value|
    value.each do |key, key_value|
      if key.is_a?(Integer)
        puts key_value[:isupper?] ? alphabet[key].upcase : alphabet[key]
      else
        puts key
      end
    end
  end
end
puts caesar_cipher('Abc.', 1)
