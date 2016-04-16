##単語数を数えるメソッド
def word_count
	count = Hash.new(0)

##単語の集計
	File.open(ARGV[0]) do |f|
		f.each_line do |line|
			words = line.split
			#words = words.reject!{|key,value|value =~ /.+\W/}
			words.each do |word|
				count[word] += 1
			end
		end
	end
##結果の出力
	count.sort{|a,b|
		a[1] <=> b[1]
	}.each do |key,value|
		print "#{key}: #{value} \n "
	end
	puts "#{ARGV[0]} の単語数は #{count.size} です。\n"
end
word_count
