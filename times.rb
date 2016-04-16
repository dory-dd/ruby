msg = ARGV[0]
x = ARGV[1].to_i
if msg == ""
	puts "no msg!!"
	else
	x.times do
		puts msg
	end
end
