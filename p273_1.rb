def array100
	a = Array.new
	a2 = Array.new
	a3 = Array.new
	sum = 0
	for i in 0..99
		a[i] = i + 1
		sum += a[i]
		#a2[i] = a[i] * 100
		#a[i] = a2[i]
	end
	p "a sum is #{sum}"
end
#array100

#def a2
#	a2 = Array.new
#	for i in 0..99
#		a2[i] = i * 100
#	end
#	#a2.reverse!
#	puts a2
#end
##a2

def three_times
a = Array.new
a3 = Array.new
	100.times do|i|
 		a[i] = i + 1
	end
	a.each do|i|
		if a[i] % 3 == 0
			a3 = a[i]
			#a3.reverse!
			p a3
		end
	end
end

three_times
