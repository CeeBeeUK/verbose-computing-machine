lines = []

File.open('reviews.txt') do |review_file|
	lines = review_file.readlines
end

relevent_lines = lines.find_all { |line| line.include?('Truncated') }

reviews = relevent_lines.reject { |line| line.include?('--') }

def find_adjective(string)
	words = string.split(' ')
	index = words.find_index('is')
	words[index + 1]
end

adjectives = reviews.map { |review| find_adjective(review) }

puts adjectives
