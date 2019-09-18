# code here!

class School
attr_reader :school, :roster

def initialize(name)
  @school = name
  @roster = {}
end 

def add_student(name, grade)
    if !@roster.has_key?(grade)
    @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted = {}
    @roster.each do |grade, name|
      sorted[grade] = name.sort 
  end
  sorted
end
  
end