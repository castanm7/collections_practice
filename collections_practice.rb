def sort_array_asc(int)
    int.sort
end

def sort_array_desc(int)
    int.sort.reverse
end

def sort_array_char_count(string) 
    string.sort_by do |word|
        word.length
    end
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(string)
    string.each do |word|
        word[2] = "$"
    end
end

def find_a(array)
    array.find_all do |string|
        string[0] == "a"
        
    end 
end

def sum_array(array)
    array.inject do |sum, number|
        sum + number 
    end
end

## This code at the bottom also works
# def sum_array(array)
#     array.inject(:+)    
# end

# Build a method that adds an `"s"` to each word in the array except for 
# the second element in the array ("feet" is already plural).
# **Advanced:** *Iterators in Ruby are chainable, see if you can use*
#  `.each_with_index` *in addition to* `.collect` *to solve this one in
#   an elegant way. What happens if you write:*

def add_s(array)
    array.collect do |word|
        if array[1] == word
            word
        else    
            word + "s"
        end
    end
end