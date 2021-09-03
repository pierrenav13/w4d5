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
        if str_2.include?(char)
            idx = str_array.index(char)
            str_array.delete_at(idx)
        end
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

p third_anagram?("gizmo", "sally")
p third_anagram?("elvis", "lives")

def fourth_anagram?

end