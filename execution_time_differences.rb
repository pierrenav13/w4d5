#my_min

def my_min_v1(list) #O(n^2)
  min = list.first

  list.each_with_index do |num1, idx1|
    list.each_with_index do |num2, idx2|
      if idx1 < idx2
        if num1 < num2 && num1 < min
          min = num1
        elsif num2 < num1 && num2 < min
          min = num2
        end
      end
    end
  end
  min
end

def my_min_v2(list) #O(n)
  min = list.first
  list.each { |num| min = num if num < min }
  min
end

list1 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min_v1(list1)
# p my_min_v2(list1)

#largest_contiguous_subsum

def max_subsum_v1(list) #O(n^4)
  sub_array_sums = []

  (0...list.length).each do |i|
    (i...list.length).each do |j|
      sub_array_sums << list[i..j].sum
    end
  end
  sub_array_sums.max
end

def max_subsum_v2(list) #O(n) time & O(1) space
  max = list.first
  sum = 0

  list.each do |num|
    sum = 0 if sum < 0
    sum += num
    max = sum if sum > max
  end
  max
end

list2 = [5, 3, -7]
list3 = [2, 3, -6, 7, -6, 7]
list4 = [-5, -1, -3]

# p max_subsum_v1(list2)
# p max_subsum_v1(list3)
# p max_subsum_v1(list4)

# p max_subsum_v2(list2)
# p max_subsum_v2(list3)
# p max_subsum_v2(list4)