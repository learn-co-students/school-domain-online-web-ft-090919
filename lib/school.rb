# code here!
class School
  attr_accessor :school, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    students = @roster[grade]
  end
  
  def sort
    sroster = {}
    @roster.each { |key,names| sroster[key] = names.sort}
    sroster
  end
  
end
