def three_even?(list)
    even1 = false
    even2 = false
    #3rd even was not needed
    
    list.each do |n|
        if n % 2 == 0 && even1 == true && even2 == true
            return true
        elsif n % 2 == 0 && even1 == true
            even2 = true
        elsif n % 2 == 0
            even1 = true
        elsif n % 2 != 0
            even1 = false
            even2 = false
            #3rd even wasn't needed
            
        end
    end   
    return false
end

puts three_even? ([2, 1, 3, 5])
puts three_even? ([2, 4, 12, 5])
puts three_even? ([2, 1, 4, 6])
puts three_even? ([1, 4, 6, 4])
puts three_even? ([])

def bigger_two(list1, list2)
    list1_sum = list1[0] + list1[1]
    list2_sum = list2[0] + list2[1]
    if list1_sum > list2_sum || list1_sum == list2_sum
        return list1
    else
        return list2
    end
end

puts bigger_two([1, 2], [3, 4])
puts bigger_two([1, 7], [4, 4])

def series_up(num)
    list = [1]
    length = num*(num + 1)/2
    n = 1
    reset = 3
    (length - 1).times do
        list.push n
        n += 1
        if n == reset
            n = 1
            reset += 1
        end
    end
    
    return list
end

print series_up(1)
print series_up(2)
print series_up(3)
print series_up(4)