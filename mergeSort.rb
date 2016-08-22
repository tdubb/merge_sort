@array = [55, 3, 40, 45, 23, 12, 28, 90, 7, 27]
@merge_array = []

def sort(arr)
	if arr.length != 2
		new_array = arr.each_slice(arr.length/2).to_a
		@arr_a = new_array[0].sort!
		@arr_b = new_array[1].sort!
	end
end

def merge(arg, arg1)
	if  @merge_array.length == @array.length
		puts "#{merge_array}"
	elsif arg[x] < arg1[y]
		@merge_array.push(arg[x])
		merge(arr_a, arr_b)
	else arg[x] > arg1[y]
		@merge_array.push(arg1[y])
		merge(arr_a, arr_b)
	end
end

sort(@array)
(@array.length).times { |x, y| merge(@arr_a, @arr_b) }
