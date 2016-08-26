@array = [55, 3, 40, 45, 23, 12, 28, 90, 7, 27]
@merge_array = []

def sort(arr)
	if arr.length != 2
		new_array = arr.each_slice(arr.length/2).to_a
		@arr_a = new_array[0].sort!
		@arr_b = new_array[1].sort!
	end
	merge(@arr_a, @arr_b)
end

def merge(arg, arg1, x)
	if  @merge_array.length == @array.length
		puts "#{@merge_array}"
	elsif arg[x] < arg1[x]
		@merge_array.push(arg[x])
		merge(@arr_a, @arr_b, x)
	else arg[x] > arg1[x]
		@merge_array.push(arg1[x])
		merge(@arr_a, @arr_b, x)
	end
end

sort(@array)
(@array.length).times { |x| merge(@arr_a, @arr_b, x) }

# take an array and divide it half until we reach base case of array.length == 1
# each array will be one unit take each unit and compare it to another unit
		# and then the less than will go into new array followed by second element and repeat until
		# completed array of sorted elements
