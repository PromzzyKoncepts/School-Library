class Person
  attr.reader: @id
  attr.accessor: @name, :@age
  
  def initialize(name, age = "Unknown", parent_permission = true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  private
  def is_of_age?
    @age >= 18
  end

  public
  def can_use_services?
    is_of_age? || parent_permission = true
  end
end