class School
  attr_accessor :roster, :sort
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !roster.key?(grade)
      roster[grade] = [student]
    else
      roster[grade] << student
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.map do |level, students|
      roster[level].sort
    end
  end

end
