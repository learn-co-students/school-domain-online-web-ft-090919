# frozen_string_literal: true

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

  def grade(level)
    roster.detect do |key, value|
      if key == level
        return value
      end
    end
  end

  def sort
  grades_hash = {}
  roster.each do |grades, students|
    grades_hash[grades] = students.sort
  end
  grades_hash
end


end
