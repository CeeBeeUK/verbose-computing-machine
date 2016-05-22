lines = []

File.open('reviews.txt') do |review_file|
	lines = review_file.readlines
end

relevent_lines = lines.find_all { |line| line.include?('Truncated') }

reviews = relevent_lines.reject { |line| line.include?('--') }

puts reviews
