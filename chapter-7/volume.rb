def volume(options)
	result = options[:depth] * options[:height] * options[:width]
	puts "Volume is #{result}"
end

volume(width: 10, height: 5, depth: 2.5)