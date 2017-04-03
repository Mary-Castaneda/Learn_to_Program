def shuffle some_array
    my_shuffle some_array, []
end
def my_shuffle some_array, shuffled_array
    if some_array == []
        puts shuffled_array
    else
    shuffled_array.push(some_array.max)
    some_array.delete(some_array.max)
    shuffled_array.push(some_array.min)
    some_array.delete(some_array.min)
    my_shuffle some_array, shuffled_array
    end
end

shuffle(["dong", "ding", "dead", "the", "witch", "is", "yippee"])