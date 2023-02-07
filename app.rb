require_relative './students'
require_relative './teachers'
require_relative './rental'
require_relative './book'
require_relative './menu'
require_relative './creation'
require_relative './data'
require_relative 'list'

class App
  include ShowMenu
  attr_reader :books, :persons, :rental

  def initialize
    @books = []
    @persons = []
    @rental = []
  end

  def load_data
    load_person
    puts
    load_books
    puts
    load_rentals
  end
end