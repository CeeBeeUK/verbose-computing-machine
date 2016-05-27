class Steak

include Comparable

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

prime = Steak.new
prime.grade = :prime

choice = Steak.new
choice.grade = :choice

select = Steak.new
select.grade = :select

puts "prime > choice #{prime > choice}"
puts "prime < select #{prime < select}"
puts "select == select #{select == select}"
puts "select <= select #{select <= select}"
puts "select >= choice #{select >= choice}"
print "choice.between?(select, prime): "
puts choice.between?(select, prime)
