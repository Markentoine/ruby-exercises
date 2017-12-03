class School
  def initialize
    @roster = Hash.new([])
  end

  def add(student, grade)
    roster[grade] += [student]
  end

  def to_h
    roster.sort.map { |grade, students| [grade, students.sort] }.to_h
  end

  def grade(specific_grade)
    roster[specific_grade]
  end

  private

  attr_reader :roster
end
