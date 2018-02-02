vowels = Hash.new
vowel_letters = ["a", "e", "o", "i", "u"]

("a".."z").each.with_index(1) do |letter, number|
  vowels[letter] = number if vowel_letters.include?(letter)
end

puts vowels