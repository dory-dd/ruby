#	def avg
#		inject(0.0){|r,i| r+=i.to_i }/size
#	end
	def dice10
		dice = Array.new
			for i in 0..ARGV[0].to_i do
			dice[i] = Random.rand(6) + 1
		end
		puts dice
	end
	dice10
