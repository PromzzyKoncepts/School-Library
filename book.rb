class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initialize
    @title = title
    @author = author
    @rental = []
  end

  def adding_rental(person, date)
    Rental.new(date, self, person)
  end
end