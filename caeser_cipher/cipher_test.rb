require_relative 'caesar_cipher'

def test_caesar_cipher
  puts "Test 1: Shifting 'What a string!' by 5"
  puts caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!" ? "Pass" : "Fail"

  puts "Test 2: Shifting 'Hello, World!' by 0 (no shift)"
  puts caesar_cipher("Hello, World!", 0) == "Hello, World!" ? "Pass" : "Fail"

  puts "Test 3: Shifting 'Zebra-123!' by 3 (wrap z to a)"
  puts caesar_cipher("Zebra-123!", 3) == "Cheud-123!" ? "Pass" : "Fail"

  puts "Test 4: Shifting 'Lowercase' by 26 (full rotation)"
  puts caesar_cipher("Lowercase", 26) == "Lowercase" ? "Pass" : "Fail"

  puts "Test 5: Shifting 'Uppercase' by -1 (shift left)"
  puts caesar_cipher("Uppercase", -1) == "Toodqzbrd" ? "Pass" : "Fail"
end

# Run the tests
test_caesar_cipher
