def bubble_sort (list)

    for i in 1..list.length-1
        for j in 0..list.length-2

            temp = 0
            start = list[j]

            if start > list[j+1]
                temp = list[j+1]
                list[j+1] = start
                list[j] = temp
            end
        end
    end

    puts list

end


bubble_sort([3,5,2,6,9,1,0,13,2,1,3])