require "pry"
# code here!
class School
  attr_reader :school_name
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  
  def roster
    @roster
  end
  
  
  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, names|
      roster[grade] = names.sort
    end
  end
end
