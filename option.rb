module Options
  def options(input)
    creation = Creation.new(@persons, @books, @rental)
    listings = Listings.new(@persons, @book, @rental)
    case input
    when '1'
      listings.list_people

    when '2'
      listings.list_books

    when '3'
      @persons.push(creation.create_person)
    when '4'
      @books.push(creation.create_book)
    when '5'
      @rental.push(creation.create_rental)
    when '6'
      listings.load_rentalss
    else
      'Enter a number between from 1 to 7'
    end
  end

  def library_menu
    puts ''
    puts ''
    puts 'Welcome to the School Library App!'
    puts ''
    puts ''
    puts 'Please choose one of these options by entering a number'
    puts ''
    puts ''
    puts '1- List all people'
    puts '2- List all available books'
    puts '3- Create a person'
    puts '4- Create a book'
    puts '5- Create a rental'
    puts '6- List all rentals for a given person(ID)'
    puts '7- Exit'
  end
end
