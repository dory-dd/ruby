=begin
日付：2016/03/26
プログラム：「たのしいRuby」サンプルプログラム
備考：結構楽しんでる
=end
#変数
x = ARGV[0].to_i
y = ARGV[1].to_i
z = ARGV[2].to_i
#計算
area = (x*y + y*z + z*x) * 2
volume = x * y * z
#表示
puts "表面積=#{area}"
print "体積=" , volume , "\n"
