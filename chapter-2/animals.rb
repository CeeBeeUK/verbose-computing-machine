class Bird

	def talk 
		puts "Chirp! Chirp!"
	end
	
	def move(destination)
		puts "Flying to the #{destination}."
	end
end

class Dog
	
	attr_reader :name, :age

	def name=(value)
		if value == ""
			raise "Name can't be blank!"
		else
			@name = value
		end
	end

	def age=(value)
		if value < 0
			raise "An age of #{value} is not valid!"
		else
			@age = value
		end
	end

	def talk 
		puts "#{@name} says Bark!"
	end
	
	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end

	def report_age
		puts "#{@name} is #{@age} years old"
	end
end

class Cat
	
	def talk 
		puts "Meow!"
	end
	
	def move(destination)
		puts "Running to the #{destination}."
	end
end

bird = Bird.new
cat = Cat.new

bird.move("tree")
bird.talk
cat.move("house")

fido = Dog.new
fido.name = 'Fido'
fido.age = 7
fido.talk

rex = Dog.new
rex.name = "Rex"
rex.age = 3
rex.move("bed")
rex.report_age
fido.report_age

glitch = Dog.new
glitch.name = ""
glitch.age = -256
glitch.report_age