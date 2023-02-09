require './base_decorator'
require './nameable'
require './rental'
require './trimmer_decorator'
require './capitalize_decorator'

class Person < Nameable
  def initialize(age, name, parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rental = []
  end

  attr_reader :id, :rental
  attr_accessor :name, :age

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission = true
  end

  def correct_name
    @name
  end

  def adding_rental(book, date)
    Rental.new(date, book, self)
  end
end
