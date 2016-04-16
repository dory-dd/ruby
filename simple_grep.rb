def Grep(pattern,filename)
	file = File.open(filename)
		file.each_line do|line|
		if pattern =~ line
		print line
		end
		end
		file.close
end
