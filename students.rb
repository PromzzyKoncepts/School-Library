require './persons'

class Student < Person
  def initialize(age, name, classroom, parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end

  attr_reader :classroom

  def play_hooky
    puts '¯(ツ)/¯'
  end

  def classroom=(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
