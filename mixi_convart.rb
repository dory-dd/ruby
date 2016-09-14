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
	#puts header
	end

	def make_bodies(body)
		##改行コード変換したりとか
		bodies = body
	end

	def read_xml
		bodies = Hash.new
		doc = REXML::Document.new(open(Mixi_xml))
		doc.elements.each("/diary/day") do |day|
			bodies["title"] = day.attributes['title']
			bodies["date"] = day.attributes['date']
			bodies["body"] = day.elements['body'].text
			#test
			#return make_filenames(date,title)
			return bodies
		end
	end
#read_xml

	def make_markdown
			file_path = Post_path + make_filenames(date,title)
			write_body = make_header(title,date) + body
			File.write(file_path,write_body)
	end

end

mixi = Mixi_to_markdown.new
#title = mixi.read_xml
mixi.make_markdown
