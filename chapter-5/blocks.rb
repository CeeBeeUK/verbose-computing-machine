def my_method(&my_block)
	puts "We're in the method, about to invoke your block"
	my_block.call
	puts "We're back in the method"
end

my_method do
	puts "We're in the block"
end

def twice(&my_block)
	puts "In the method, about to call the block!"
	my_block.call
	puts "Back in the method, about to call the block again!"
	my_block.call
	puts "Back in the method, about to return!"
end

twice do
	puts 'Wooo!'
end

def give(&my_block)
	my_block.call("2 turtle doves", "1 partridge")
end

give do |present1, present2|
	puts "My method gave to me..."
	puts present1, present2
end

def run_block
	yield
end

run_block do
	puts "do/end"
end

run_block { puts "braces" }