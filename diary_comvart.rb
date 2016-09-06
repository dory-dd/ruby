	require 'rexml/document'
	def read_xml
		doc = REXML::Document.new(open("/Users/hitokui/Lab/mixi_export/adiary.xml"))

		d = doc.elements["diary/day"].to_a
		d.each do |day|
			#title = doc.elements["diary/day"].attributes['title'].to_s
			#doc.elements.each("diary/day/body") do |body|
			#body.to_s
			#c = c + body.length
			#puts c
		puts day
		end
		#puts body.length
	end
read_xml
