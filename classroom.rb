class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def adding_students(students)
    @students.push(students)
    student.classroom << self
  end
end
