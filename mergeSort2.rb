#step 1 break down the array into individual arrays, base case is an array of length=1
#step 2 once you have 2 arrays to merge then compare the first element of each array and put the least of the 2 into a new answer array
	#a while both arrays contain elements compare them
	#b if one of the arrays is empty and the other isn't then add the remaining array to the end of the answer array

# ary = [1,3,2,9,4,55,22,2,4,7]
#
# def merge_sort(ary)
# 	if ary.length == 1
# 		return ary
# 	else
# 		ary1 = ary.shift(ary.length/2)
# 		ary2 = ary
# 		ary1 = merge_sort(ary1)
# 		ary2 = merge_sort(ary2)
# 		p ary1
# 		p ary2
# 	end
# end
#
# merge_sort(ary)

ary = [1,3,2,9,4,55,22,2,4,7]

def merge_sort(ary)
	if ary.length == 1
		return ary
	else
		ary1 = ary.shift(ary.length/2) #[1,3,2,9,4]
		ary2 = ary #[55,22,2,4,7]
		ary1 = merge_sort(ary1)  #[1,3,2] [9,4] / [1,3] [2] [9] [4] / [1] [3] [2] [9] [4]
		ary2 = merge_sort(ary2)
		ary = merge(ary1,ary2) #[1,3] / [1,3] [2] => [1,2,3]
		# p ary1
		# p ary2
		# p answer
	end
	ary
end

def merge(ary1, ary2)
	answer = []
	while ary1.any? && ary2.any? do #ary1= [1] ary2=[3]
		# p 'inside while'
		if ary1[0] <= ary2[0]
			# p 'inside a'
			# p ary1
			answer.push(ary1.shift) # answer => [1] ary1 => []
			# p answer
		else
			# p 'inside b'
			answer.push(ary2.shift)
			# p answer
		end
	end
	if ary1.any?
		answer.push(ary1)
		answer.flatten!
	end
	if ary2.any?
		answer.push(ary2) #[3] answer => [1,[3]]
		answer.flatten! # [1,3]
	end
  p answer
end

merge_sort(ary)
