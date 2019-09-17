class School
  def initialize(school_name)
  @school_name = school_name
  end
  
  def roster
    @roster = roster
    roster[grade] << school.add_student
  end
  
  class Add_student 
    def initialize(name, grade)
      @name = name
      @grade = grade
    end
  end
  
  roster  
    
end