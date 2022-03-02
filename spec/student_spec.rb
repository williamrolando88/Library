require_relative '../classes/student'
require_relative '../classes/classroom'

describe 'Generate student object' do
  context 'given the valid inputs' do
    it 'should create a student with age: 10' do
      student = Student.new(nil, 10)
      expect(student.age).to eql(10)
      expect(student.name).to match('Unknown')
    end
    it 'should create a student with age = 10 and called Carlos' do
      student = Student.new(nil, 10, 'Carlos')
      expect(student.age).to eql(10)
      expect(student.name).to match('Carlos')
    end
  end
end
