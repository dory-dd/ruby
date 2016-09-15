class Mixi_to_markdown
	require 'rexml/document'
	Mixi_xml = "/Users/hitokui/Lab/mixi_export/adiary.xml"
	Post_path = "/Users/hitokui/Lab/dory-dd.github.io/_posts/"
	
	def make_filenames(date,title)
		filename =  +date + "-"
		filename += +title
		filename += +".markdown"
 	end

	def make_header(title,date,category = "mixi")
	   header =  "---" + "\n"
		 header += +"layout: 		post" + "\n"
		 header += +"title:  		\"#{title}\"" + "\n"
		 header += +"date:   		#{date} 00:00:00 +0900" + "\n"
		 header += +"categories:             #{category}" + "\n"
		 header += +"---" + "\n"
	end

	def make_bodies(body)
		##改行コード変換したりとか
		bodies = body
	end

	def make_markdown
		doc = REXML::Document.new(open(Mixi_xml))
		doc.elements.each("/diary/day") do |day|
			title = day.attributes['title']
			date = day.attributes['date']
			body = day.elements['body'].text
			#escape shash etc
			title = title.gsub(/\//){|word|word.slice!(1)}
			#実行部（別のメソッドにしたほうがいいのかな・・）
			file_path = Post_path + make_filenames(date,title)
			write_body = make_header(title,date) + make_bodies(body)

			File.write(file_path,write_body)
		end
	end

end

mixi = Mixi_to_markdown.new
mixi.make_markdown
puts 'ls -l /Users/hitokui/Lab/dory-dd.github.io/_posts/'
