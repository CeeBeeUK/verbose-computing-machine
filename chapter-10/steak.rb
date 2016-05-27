class Steak
	attr_accessor :grade
	GRADE_SCORES = { prime: 3, choice: 2, select:1 }

	def <=> (other)
		if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
			return -1
		elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
			return 0
		else
			return 1
		end
	end
end

first_steak = Steak.new
first_steak.grade = :prime

second_steak = Steak.new
second_steak.grade = :choice

puts first_steak <=> second_steak
puts second_steak <=> first_steak
