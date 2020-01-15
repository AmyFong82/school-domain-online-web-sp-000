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
    roster[num].sort
  end

  def sort
    roster.each do |level, students|
      grade(level)
    end
  end

end
