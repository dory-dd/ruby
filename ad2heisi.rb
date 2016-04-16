#西暦から平成に変換する

ad = ARGV[0].to_i
heisei = ad - 1998

if heisei > 0
	print "平成" , heisei , "年です\n"
else
	print "昭和天皇は戦犯なので、その元号は無効です\n"
end
