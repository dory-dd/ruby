class HelloWorld
	def initialize(myname = "Ruby")
		@name = myname

	def hello
		puts "Hello World. I am #{@name}"
		end

	def name
		@name
	end

	def name=(value)
		@name = value
	end

	def greet
		puts "Hi, I am #{self.name}."
	end

akira = HelloWorld.new("Akira")
haruki = HelloWorld.new("Haruki")
ruby = HelloWorld.new
hideki = HelloWorld.new("hideki")

hideki.greet
akira.name
#haruki.hello
#ruby.hello
