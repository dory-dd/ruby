
def split_def
	str = Array.new
	ruby = "Ruby is an object oriented programming language"
	cout_chara_size = ruby.size
	str = ruby.downcase.split(/\s/)
	puts str.sort!
end
split_def
