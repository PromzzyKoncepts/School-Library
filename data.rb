require_relative './book'
require_relative './persons'
require_relative './teachers'
require_relative './students'
require 'json'

def save_book(title, author)
  obj = {
    title: title,
    author: author
  }

  return unless File.exist?('./books.json')

  file = File.open('./books.json')
  if file.size.zero?
    book = [obj]
  else
    book = JSON.parse(File.read('./books.json'))
    book << obj
  end

  file.close

  addfile = File.open('./books.json', 'w')
  addfile.write(JSON.generate(book))
  addfile.close
end

def load_books
  if File.exist?('./books.json')
    file = File.open('./books.json')

    if File.empty?('./books.json')
      'No book records yet.'
    else
      books = JSON.parse(File.read('./books.json'))

      books.each do |book|
        book = Book.new(book['title'], book['author'])
        @books << book
      end
    end

    file.close

  else
    puts 'Please add books.'
  end
  puts 'Books:'
  @books.each { |b| puts "Book Title: #{b.title}, Book Author: #{b.author}" } unless @books.empty?
end

def save_student(age, name, parent_permission)
  obj = {
    type: 'Student',
    age: age,
    name: name,
    parent_permission: parent_permission
  }

  return unless File.exist?('./persons.json')

  file = File.open('./persons.json')

  if file.size.zero?
    student = [obj]
  else
    student = JSON.parse(File.read('./persons.json'))
    student << obj
  end

  file.close

  addfile = File.open('./persons.json', 'w')
  addfile.write(JSON.generate(student))
  addfile.close
end

def save_teacher(age, name, specialization)
  obj = {
    type: 'Teacher',
    age: age,
    name: name,
    specialization: specialization
  }

  return unless File.exist?('./persons.json')

  file = File.open('./persons.json')

  if file.size.zero?
    teacher = [obj]
  else
    teacher = JSON.parse(File.read('./persons.json'))
    teacher << obj
  end

  file.close

  addfile = File.open('./persons.json', 'w')
  addfile.write(JSON.generate(teacher))
  addfile.close
end

def load_person
  return unless File.exist?('./persons.json')

  file = File.open('./persons.json')
  if File.empty?('./persons.json')
    puts 'No person records yet.'
  else
    persons = JSON.parse(File.read('./persons.json'))
    puts 'Person list:'
    persons.each do |person|
      if person['option'] == 'Student'
        student = Student.new(person['age'], person['name'])
        @persons << student
      else
        teacher = Teacher.new(person['age'], person['name'], person['specialization'])
        @persons << teacher
      end
      puts "Name: #{person['name']}, Age: #{person['age']}, [#{person['type']}]"
    end
  end
  file.close
end

def load_rentals
  if File.exist?('./rentals.json')
    file = File.open('./rentals.json')

    if file.size.zero?
      puts 'No rentals yet.'
    else
      rentals = JSON.parse(File.read('./rentals.json'))
      puts 'Rented books: '
      rentals.each do |rental|
        puts "Name: #{rental['persons']}, Book: #{rental['book']} on: #{rental['date']}"
      end
    end
    file.close
  else
    puts 'No rent records yet.'
  end
end

def save_rental(date, persons, book)
  obj = {
    date: date,
    persons: persons.name,
    book: book.title
  }

  return unless File.exist?('./rentals.json')

  file = File.open('./rentals.json')

  if file.size.zero?
    rental = [obj]
  else
    rental = JSON.parse(File.read('./rentals.json'))
    rental << obj
  end
  file.close
  addfile = File.open('./rentals.json', 'w')
  addfile.write(JSON.generate(rental))
  addfile.close
end
