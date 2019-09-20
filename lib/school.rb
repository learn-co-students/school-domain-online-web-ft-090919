# code here!
class School 
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grades)
    roster[grades]
  end
  
  def sort
    sorted_list = {}
    roster.each do |grade, student_name|
      sorted_list[grade] = student_name.sort
    end 
    sorted_list
  end
end 
