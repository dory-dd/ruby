from = ARGV[0].to_i
to = ARGV[1].to_i
sum = 0
(from..to).each do |i|
	sum = sum + i
end
puts sum
