class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize
    @date = date
    @book = book
    @person = person
    book.rental << self
    person.rental << self
  end
end
