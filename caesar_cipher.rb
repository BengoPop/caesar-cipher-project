# add a method to keep the uppercase if uppercase
def encode_shift_with_case(input, int_shift_factor, alphabet)
  input_array = input.split('')
  input_array.map do |letter|
    if alphabet.include?(letter.downcase)
      shifted_index = (alphabet.index(letter.downcase) + int_shift_factor) % alphabet.length
      [shifted_index, { is_upper?: letter == letter.upcase }]
    else
      [letter, { is_upper?: false }]
    end
  end
end

def assemble_shifted_string(array, alphabet)
  array.reduce('') do |acc, (object, value)|
    if object.is_a?(Integer)
      value[:is_upper?] ? acc + alphabet[object].upcase : acc + alphabet[object]
    else
      acc + object
    end
  end
end

# change to map instead
def caesar_cipher(string, int_shift_factor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  input_hash_shifted = encode_shift_with_case(string, int_shift_factor, alphabet)
  assemble_shifted_string(input_hash_shifted, alphabet)
end
