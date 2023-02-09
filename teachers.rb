require './persons'

class Teacher < Person
  def initialize(age, name, specialization)
    @specialization = specialization
    super(age, name)
  end

  def can_use_services?
    true
  end
end
