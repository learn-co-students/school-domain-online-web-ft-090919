require 'pry'
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    if !roster.keys.include?(grade)
      @roster[grade] = []
      @roster[grade] << name 
    else
      @roster[grade] << name
    end
  end 
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    sorted_hash = {}
    @roster.each do |grade, names_array|
     
      sorted_hash[grade] = names_array.sort
    
    end 
    sorted_hash
      
    
  end 
  

end 