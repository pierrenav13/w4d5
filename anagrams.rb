def first_anagram?(str_1, str_2)
    anagrams = str_1.chars.permutation(str_1.length).to_a
    anagrams.map! {|ele| ele.join('')}
    anagrams.include?(str_2)
end

# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvis", "lives")

def second_anagram?(str_1, str_2)
    str_array = str_2.chars
    str_1.each_char do |char|
      idx = str_array.find_index(char)
      return false if idx.nil?
      str_array.delete_at(idx)
    end
    str_array.empty?
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives")


def third_anagram?(str_1, str_2)
   arr_1 = str_1.split('').sort
   arr_2 = str_2.split('').sort
   arr_1 == arr_2
end

# p third_anagram?("gizmo", "sally")
# p third_anagram?("elvis", "lives")

def fourth_anagram?(str_1, str_2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str_1.each_char { |char| hash1[char] += 1 }
  str_2.each_char { |char| hash2[char] += 1 }

  hash1 == hash2
end

# p fourth_anagram?("gizmo", "sally")
# p fourth_anagram?("elvis", "lives")

def bonus_anagram?(str_1, str_2)
  hash = Hash.new(0)

  str_1.each_char { |char| hash[char] += 1 }
  str_2.each_char { |char| hash[char] -= 1 }

  hash.each_value { |sum| return false unless sum == 0 }
  true
end

# p bonus_anagram?("gizmo", "sally")
# p bonus_anagram?("elvis", "lives")