class School
  attr_accessor(:name, :roster)
  
  def initialize(name, roster={})
    
    @name = name
    @roster = roster
  
  end
  
  def add_student(name, grade)
    
    if @roster[grade] != nil 
      @roster[grade] << name
    else
      @roster[grade] = [name] 
    
    end
  end
  
   def grade(grade)
     @roster[grade]
   end
   
   def sort
     
     @roster.each do |x,i|
       i.sort!
     end
   end
   
end