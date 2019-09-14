require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end

  def add_student(student_name, student_grade)
    if @roster.keys.include?(student_grade)
      @roster[student_grade] << student_name
      
    else 
      @roster[student_grade] = []
      @roster[student_grade] << student_name 
    end
  end 
  
  def grade(grade) 
    @roster[grade]
  end
  def sort
    @roster.each do |ele, idx|
      idx.sort!
    end
  end
end