class School

	attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {} #keys - grades, value - array of student names
  end
    
  def add_student(name, grade)
		if(@roster[grade])
    	@roster[grade] << name

		else
			@roster[grade] = []
			@roster[grade] << name
		end
  end

	def grade(grade)
		@roster[grade]
	end

	def sort() #key order doesn't matter - just the students in each respective value
		@roster.each do |key, value|
			value.sort!
		end
	end

end