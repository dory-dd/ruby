arry = [ "A" , 1 , nil ]
arry.each do |item|
	case item
	when String
		puts "item is String"
	when Numeric
		puts "item is Numeric"
	else
		puts "istem is something"
	end
end
