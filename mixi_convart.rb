class Mixi_to_markdown
	require 'rexml/document'
	@mixi_xml = "/Users/hitokui/Lab/mixi_export/adiary.xml"

	def make_filenames(date,title)
		filename = 	date + "-"
		filename = +title
		filename = +"\.markdown"
 	end

	def make_header(title,date,category = "mixi",body)
	   header =  "---" + "\n"
		 header = +"layout: 		post" + "\n"
		 header = +"title:  		\"#{title}\"" + "\n"
		 header = +"date:   		#{date} 00:00:00 +0900" + "\n"
		 header = +"categories: #{category}" + "\n"
		 header = +"---" + "\n"
	puts header
	end

	def make_bodies(body)
		##改行コード変換したりとか
		bodies = body
	end

	def read_xml
		doc = REXML::Document.new(open(@mixi_xml))
		doc.elements.each("/diary/day") do |day|
			title = day.attributes['title']
			date = day.attributes['date']
			body = day.elements['body'].text
		end
	end
#read_xml

end
Mixi_to_markdown.make_header