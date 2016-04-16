=begin
同じフォルダ内のステップ数をカウントする
必ずしもコードとは限らない
そのうちアップデートしてコードのみとする
=end

count = 0
filenames = Dir.glob("*rb")

filenames.each do |filename|
	count += File.read(filename).count("\n")
end
puts "今まで書いたRubyの合計ステップ数  #{count} "

