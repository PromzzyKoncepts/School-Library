require './persons'

class Student < Person
  def initialize(classroom, name, age, parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end
  # attr_reader :classroom

  def play_hooky
    puts '¯(ツ)/¯'
  end

  def classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
