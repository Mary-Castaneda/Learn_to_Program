def sort some_array
    my_sort some_array, [], []
end

def my_sort some_array, sorted_array, capital_array
    some_array.each do |item|
        if item == item.capitalize
            capital_array.push(item)
            some_array.delete(item)
        end
    end
    while some_array != []
        sorted_array.push(some_array.min)
        some_array.delete(some_array.min)
    end
    if some_array == []
        final_sort sorted_array, capital_array
    end
end
def final_sort sorted_array, capital_array
    a = 0
        while capital_array != []
            capital_array.each do |thing|
                if thing.downcase <= sorted_array[a]
                    sorted_array.insert(a, thing)
                    capital_array.delete(thing)
                end
            end
            a = a + 1
        end
        if capital_array == []
            puts sorted_array
        end
end

sort(["dong", "Ding", "dead", "the", "Witch", "is", "yippee", "apple"])