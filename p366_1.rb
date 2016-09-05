=begin
2016/05/09
久しぶりにRubyの勉強を再開。
2週間ぶりに触るので、やる気がでない
=end
	def file_hands_on
		text_line = 0
		text_word = Hash.new(0)
		text_char = 0
		file_name = File.read(ARGV[0])
		#行数をカウントします
		file_name.each_line do|line|
			text_line += 1
		#単語数をカウントします
			words = line.split
				words.each do|word|
					text_word[word] += 1
				end
		end
		#文字数をカウントします
		file_name.each_char do|c|
			text_char += 1
		end
		#file_close
		file_name.close
	puts "行数は#{text_line}"
	puts "単語数は#{text_word.size}"
	puts "文字数は#{text_char}"
	end

file_hands_on
