require_relative '../book'
require_relative '../persons'

describe Person do
  context 'contains names and ages' do
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

    it 'expects a rental to be created' do
      expect(person.rental).to eql []
    end

    it 'expects the correct name to be given' do
      expect(person.correct_name).to eq 'Margaret'
    end
    it 'returns true if the person is of age' do
      expect(person.of_age?).to eq true
    end
    it 'returns false if the person is not of age' do
      person = Person.new(13, 'Maxwell', parent_permission: false)
      expect(person.of_age?).to eq false
    end
    it 'returns true if the person has parents permission' do
      person = Person.new(13, 'Maxwell', parent_permission: true)
      expect(person.can_use_services?).to eq true
    end
    it 'returns false if the person does not have parents permission' do
      person = Person.new(13, 'Maxwell', parent_permission: false)
      expect(person.can_use_services?).to eq false
    end
  end
end
