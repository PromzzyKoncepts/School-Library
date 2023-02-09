require_relative './menu'
require_relative './data'
require_relative './creation'
require_relative './book'

class Listings
  include ShowMenu
  def initialize(persons = [], book = [], rental = [])
    @book = book
    @persons = persons
    @rental = rental
  end

  def load_rentalss
    puts
    load_rentals
  end

  def list_books
    file = File.open('./books.json')
    if file.size.zero?
      puts 'No books available'
      show_menu
    end
    puts 'List of available books:'
    puts ''
    books = JSON.parse(File.read('./books.json'))
    books.each_with_index do |item, i|
      puts "#{i}) Title: #{item["title"]}, Author: #{item["author"]}"
    end
  end

  def list_people
    if @persons.empty?
      puts 'No people found today'
      show_menu
    end
    puts 'List of people:'
    puts ''
    @persons.each_with_index do |item, i|
      puts "#{i}-- [#{item.class}] Name: '#{item.name}',  Age: #{item.age}"
    end
  end

  def list_rentals
    puts 'Select ID of any person (Please type the number of the ID)'
    @persons.each { |item| puts "id: #{item.id}, Person: #{item.name}" }
    print 'Person id: '
    id = gets.chomp.to_i
    # @rental.each do |item|
    #   puts "Date: #{item.date}, Book: #{item.book.title} by #{item.book.author}" if item.person.id.to_i == id
    # end

    person_details = @persons.find { |person| person.id == id }
    if person_details
      puts 'Rentals'
      person_details.rental.each do |rental|
        puts "#{rental.date}, Book: #{rental.book.title} by #{rental.book.author}"
      end
    else
      print('There is no rental to display', 'Please create rental record')
    end
    show_menu
  end
end
