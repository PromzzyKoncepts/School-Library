require './persons'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, name, age, parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end

  def play_hooky
    puts '¯(ツ)/¯'
  end

  def classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
