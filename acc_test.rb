class AccTest
	def pub
		puts "pub is public method"
	end
	public :pub

	def piv
		puts "piv is private method"
	end
	private :piv

end

acc = AccTest.new

acc.pub
acc.piv
