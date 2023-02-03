require './persons'

class Teacher < Person
  def initialize(_name, _age = 'Unknown', _parent_permission: true)
    @specialization = specialization
    super(age, id, name, parents_permission: parents_permission)
  end

  def can_use_services?
    true
  end
end
