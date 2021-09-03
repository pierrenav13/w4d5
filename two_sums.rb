def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            next if idx1 == idx2
            return true if num1 + num2 == target_sum
        end
    end
    false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def bsearch(arr, target)  
    mid = arr.length/2
    case arr[mid] <=> target  
    when -1    
        result = bsearch(arr.drop(mid+1), target)    
        result ? result + mid + 1 : nil  
    when 0    
        return mid  
    when 1    
        return bsearch(arr.take(mid), target)  
    end
end

def okay_two_sum?(arr, target_sum)
    sorted_arr = arr.sort
    sorted_arr.each_with_index do |num, idx|
        diff = target_sum - num
        match = bsearch(sorted_arr[(idx+1)..-1], diff)
        return true unless match.nil?
    end
    false
end

# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target_sum)
    hash = {}
    
    arr.each do |num|
        diff = target_sum - num
        return true if hash[diff]
        hash[num] = true
    end
    
    false
end

p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false