def bubble_sort(array)
    #Arrays with a length <=1 would cause an error so exclude that
    return array if array.length <= 1
    
    sorted = false
    while !sorted
        sorted = true
        array[1..-1].each.with_index(1) do |current_value, index|
            if array[index-1] > array[index]
                array[index-1], array[index] = array[index], array[index-1]
                sorted = false
            end
        end
    end
    array        
end


p bubble_sort [2,4,1,1,13,7,5,4,0,-3]
