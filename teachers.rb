require './persons'

class Teacher < Person
  def initialize(name, age = 'Unknown', specialization)
    @specialization = specialization
    super(age, name)
  end

  def can_use_services?
    true
  end
end
