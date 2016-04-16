	def wday
		wdays = {
						"Monday"  => '月曜日',
						"Tuesday" => '火曜日',
						"Wednesday" => '水曜日',
						"Thursday" => '木曜日',
						"Friday"  => '金曜日',
						"Saturday" => '土曜日',
						"Sunday"  => '日曜日'
						}
		wdays.each do |key,value|
			puts "#{key}は日本語で#{value}のことです。"
		end
		puts wdays.size
	end
wday
