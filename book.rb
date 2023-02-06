require './rental'

class Book
  attr_reader :rental
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def adding_rental(person, date)
    Rental.new(person, self, date)
  end
end
