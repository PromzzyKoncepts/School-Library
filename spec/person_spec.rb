require_relative '../book'
require_relative '../persons'

describe Person do
  context 'containing a list of names and ages' do
    person = Person.new(45, 'Margaret')

    it 'expects Margaret age to be 45' do
      expect(person.age).to eq 45
    end
    it 'expects Person.name to be Margaret' do
      expect(person.name).to eq 'Margaret'
    end

    it 'expect can_use_services to equal true' do
      expect(person.can_use_services?).to eq true
    end
  end
end
