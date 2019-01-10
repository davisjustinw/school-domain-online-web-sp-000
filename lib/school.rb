require 'pry'
class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade_number)
    @roster[grade_number]
  end
  
  def sort
    @roster.collect do |grade|
      {grade.first => grade.last.sort}
    end
  end
  
end