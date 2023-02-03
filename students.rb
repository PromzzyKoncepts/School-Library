require './persons'

class Student < Person
  attr_reader :classroom
  def initialize(_name, _age = 'Unknown', _parent_permission: true)
    @classroom = classroom
    super(age, id, name, parents_permission: parents_permission)
  end

  def play_hooky
    puts '¯(ツ)/¯'
  end
  def classroom(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
