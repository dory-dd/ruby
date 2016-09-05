	require 'rexml/document'
	def read_xml
		doc = REXML::Document.new(open("/Users/hitokui/Lab/mixi_export/adiary.xml"))
		puts doc.elements["diary/day"].attributes['date']
		puts doc.elements["diary/day"].attributes['title']
		puts doc.elements["diary/day/body"].text
	end
	read_xml
