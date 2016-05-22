lines = []

File.open('votes.txt') do |file|
	lines = file.readlines
end
votes = Hash.new(0)

lines.each do |line|
	name = line.chomp
	name.upcase!
	# personally, I would have added the upcase after chomp!
	votes[name] += 1
end
p votes
