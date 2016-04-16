def sum_array(nums1,nums2)
	sum = Array.new
	#nums1 = (1..49).to_a
	#nums2 = (50..100).to_a
	nums1.zip(nums2) do |a , b|
		sum << a + b
	end
 return sum
end
p sum
