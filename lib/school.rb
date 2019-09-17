class School 
  attr_reader :school_name, :roster 
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(name,grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade]  << name
    end
  end
  
  def grade(grade)
    students = @roster[grade]
  end
  
  def sort
    sorted = @roster
    @roster.each do |key,names|
      sorted[key] = names.sort
    end
    sorted
  end
  
end

