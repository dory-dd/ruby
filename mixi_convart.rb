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

	def file_write(file_path,write_body)
		if (File.exist?(file_path))
			puts "#{file_path} already exist"
		else
			puts Time.now.to_s + file_path + "作成しました。"
			File.write(file_path,write_body)
		end
	end

	def make_markdown
		begin
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

				file_write(file_path,write_body)
			end
		rescue => ex
			puts "読込先のXMLファイルが存在しないか、なんかのバグです"
			puts "詳細：" + ex.message
		end
	end

end

mixi = Mixi_to_markdown.new
mixi.make_markdown
