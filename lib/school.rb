require "pry"
class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
      @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_with_object(@roster.clone) do |(grade, student_array), sorted_roster|
      sorted_roster[grade] = student_array.sort
    end
  end







end
