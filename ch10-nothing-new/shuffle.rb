def shuffle some_array

shuf = []

while some_array.length > 0

rand_index = rand(some_array.length)

curr_index = 0

new_arr = []

some_array.each do |item|

if curr_index == rand_index

shuf.push item

else

new_arr.push item

end

curr_index = curr_index + 1

end


some_array = new_arr

end

shuf

end

puts(shuffle([1,2,3,4,5,6,7,8,9]))
