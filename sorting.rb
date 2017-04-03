def sort some_array
    my_sort some_array, []
end
def my_sort some_array, sorted_array
    if some_array == []
        puts sorted_array
    else
    sorted_array.push(some_array.min)
    some_array.delete(some_array.min)
    my_sort some_array, sorted_array
    end
end

sort(["dong", "ding", "dead", "the", "witch", "is", "yippee"])