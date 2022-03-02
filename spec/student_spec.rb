require_relative '../classes/student'
require_relative '../classes/classroom'

describe 'Generate student object' do
  context 'given the valid inputs' do
    maths = Classroom.new('Maths')
    it 'Should create a student with age: 10 and classroom: Maths' do
      student = Student.new(maths, 10)
      expect(student.age).to eql(10)
      expect(student.classroom.label).to match('Maths')
      expect(student.name).to match('Unknown')
    end
    it 'Should create a student with age = 10 and called Carlos, taking Maths' do
      student = Student.new(maths, 10, 'Carlos')
      expect(student.age).to eql(10)
      expect(student.classroom.label).to match('Maths')
      expect(student.name).to match('Carlos')
    end
  end
end
