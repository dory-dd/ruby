class String
	def count_word
		ary = self.split(/\s+/) 

		return ary.size
	end
end

str = "Just Another Ruby Newbie"
str2 = "Rise Up. Rivenge is Sweet"
p str.count_word
p str2.count_word
