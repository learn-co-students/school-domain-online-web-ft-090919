class School 
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def roster 
    @roster
  end
  
  
  def add_student(name, grade) 
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << name
  end 
  
  
  def grade(grade)
    @roster[grade]
  end 
  
  
  def sort
    
    sorted_roster = {}
    
    @roster.collect do |grade, student_array|
      sorted_roster[grade] = student_array.sort
    end 
    
    sorted_roster
    
  end 
  
end 

