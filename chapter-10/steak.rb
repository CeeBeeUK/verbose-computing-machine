class Steak
	attr_accessor :grade
	GRADE_SCORES = { prime: 3, choice: 2, select:1 }

	def > (other)
		GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
	end
end

first_steak = Steak.new
first_steak.grade = :prime

second_steak = Steak.new
second_steak.grade = :choice

if first_steak > second_steak
	puts "I'll take #{first_steak.inspect}."
end
