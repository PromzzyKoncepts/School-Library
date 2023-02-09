require_relative '../students'
require_relative '../persons'

describe Student do
  context 'with an input of names and ages' do
    student = Student.new(23, 'Maxwell', parent_permission = true)

    it 'expects age of student to be 23' do
      expect(student.age).to eql 23
    end
    it 'expects name of student to be Maxwell' do
      expect(student.name).to eq 'Maxwell'
    end

    it 'expect the student be part of a classroom' do
      expect(student.classroom).to eq true
    end
  end
end
