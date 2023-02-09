require_relative '../rental'
require_relative '../persons'

describe Rental do
  context 'with an input of names and ages' do
    person = Person.new(29, 'Maxwell')
    book = Book.new('benardo', 'bello')
    rental = Rental.new('2023/01/02', book, person)

    it 'expects date for which book was rented to be 2023/01/02' do
      expect(rental.date).to eq '2023/01/02'
    end
    it 'expects name of student with a rented book to be Maxwell' do
      expect(rental.person.name).to eq 'Maxwell'
    end

    it 'expect the author of the rented book to be bello' do
      expect(rental.book.author).to eq 'bello'
    end
  end
end