# code here!
class School
  attr_accessor :name, :roster, :student_name, :grade
  
  def initialize(name)
    @roster = Hash.new
    @name = name
    puts @name
  end
  
  def add_student(student_name, student_grade)
    puts "#{student_name} #{student_grade}"
    if student_name == [] || student_grade == nil 
      puts "Argument Error. No value or nil. Please retry."
    else if @roster.key?(student_grade)  == true
      @roster[student_grade] << student_name
    else 
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end

  def grade(student_grade)
    if student_grade == nil 
      puts "Student Argument out of bounds. Please retry"
    else if @roster.key?(student_grade) == true
      return @roster[student_grade]
    else 
      puts "#{@roster[student_grade]} not found"
    end
  end 
  end
  def sort
    @ret_sort = @roster.sort
    return @ret_sort.to_h
    
  end
  end
end
