=begin
2016/05/10
引き続きRubyの鍛錬
毎日やらないと、筋肉つかない
=end
	def file_sort_and_write
		#それぞれの変数定義
		text = ""
		text_array = Array.new
		text_array_first = text_array.first
		text_array_last = text_array.last

		#ファイルの読み込み
		text = File.read(ARGV[0])
		#読み込んだ内容を配列に保存
		text_array = text.split("\n")
		text_array_reverce = text_array.reverse
		#ファイルの保存
		File.write("p366_2.txt",text_array_reverce)
		#file_close
		#p366_2.close
	end

file_sort_and_write
