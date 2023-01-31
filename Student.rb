require './person'

class Student < Person
  def initialize(_name, _age = 'Unknown', _parent_permission: true)
    @classroom = classroom
    super(age, id, name, parents_permission: parents_permission)
  end

  def play_hooky
    puts '¯(ツ)/¯'
  end
end
