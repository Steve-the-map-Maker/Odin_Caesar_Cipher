def caesar_cipher(string, shift_factor)
  # Initialize a string to store the encrypted characters
  encrypted_string = string.chars.map do |char|
    # Check if the current character is a letter
    if char.match?(/[A-Za-z]/)
      # Determine the base ASCII value for uppercase or lowercase letters
      base = char.ord < 91 ? 65 : 97  # 65 for uppercase, 97 for lowercase

      # Handle negative shift factors correctly:
      shift_factor_mod = shift_factor % 26

      # Calculate the new character code within the alphabet range:
      new_char_code = (((char.ord - base) + shift_factor_mod) % 26) + base

      # Convert the new character code back to a character
      shifted_char = new_char_code.chr
    else
      # If it's not a letter, keep the character as-is
      char
    end
  end

  # Join the encrypted characters back into a string
  encrypted_string.join
end
