class HelloCount
	@@count = 0

	def HelloCount.count
		@@count
	end

def initialize(myname="Ruby")
	@name = myname
end

	def hello
		@@count += 1
		puts "Hello, World. I am #{name}.\n"
	end
end

#bob = HelloCount.new("Bob")
hideki = HelloCount.new("Hideki")
kaori = HelloCount.new("kaori")
ruby = HelloCount.new

p HelloCount.count
#bob.hello
hideki.hello
kaori.hello
ruby.hello
p HelloCount.count
