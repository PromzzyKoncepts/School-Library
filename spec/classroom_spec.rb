require_relative '../classroom'

describe Classroom do
  context 'when an instance created and parameter passed' do
    classroom = Classroom.new 'ruby classroom'

    it 'expect classroom to be ruby classroom' do
      expect(classroom.label).to eq 'ruby classroom'
    end
  end
end