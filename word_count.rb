=begin
日付：2016/03/27
内容：テキスト内のマッチした正規表現をカウントする
備考：ギャツビーは41回「old sport」と言っていた。
=end

def WordCount
#変数定義
pattern = Regexp.new(ARGV[0])
	filename = ARGV[1]
	count = 0

#処理部
file = File.open(filename)
	file.each_line do|line|
		if pattern =~ line
			count = count + 1
			print count , "\:" , line
		end
	end
file.close
end

WordCount()
