require_relative '../book'
require_relative '../persons'

describe Book do
  context 'inputing a book' do
    book1 = Book.new('Margaret', 'Sun FLower')
    book2 = Book.new('Godzilla', 'Promise')

    it 'expects book1.title to be Margaret' do
      expect(book1.title).to eql 'Margaret'
    end
    it 'confirms if Book title is Godzilla' do
      expect(book2.title).to eql 'Godzilla'
    end
    it 'confirms if Book author is Promise' do
      expect(book2.author).to eql 'Promise'
    end
  end
end