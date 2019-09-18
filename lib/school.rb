require'pry'

class School
  
  attr_accessor :school, :roster
  
  def initialize(name)
    @school
    @roster = {}
  end
  
  def add_student(student_name,grade)
      @roster[grade] ||= []
      @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_school = {}
    @roster.each do |grade, student|
      sorted_school[grade] = student.sort
    end
    sorted_school
  end
  
end

