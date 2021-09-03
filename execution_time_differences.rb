#my_min

def my_min_v1(list)
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

def my_min_v2(list)
  min = list.first
  list.each { |num| min = num if num < min }
  min
end

list1 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_v1(list1)
# p my_min_v2(list1)

#largest_contiguous_subsum

def max_subarry_v1
end

def max_subarry_v2
end

list2 = [5, 3, -7]
list3 = [2, 3, -6, 7, -6, 7]
list4 = [-5, -1, -3]