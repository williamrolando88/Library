require_relative '../classes/student'

describe '.Student' do
  context 'It should create a Student object given the valid inputs' do
    it 'Should create a student with age: 10 and classroom: Maths' do
      student = Student.new('Maths', 10)
      expect(student.age).to eql(10)
      expect(student.classroom).to match('Maths')
      expect(student.name).to match('Unknown')
    end
    it 'Should create a student with age = 10 and called Carlos, taking Maths' do
      student = Student.new('Maths', 10, 'Carlos')
      expect(student.age).to eql(10)
      expect(student.classroom).to match('Maths')
      expect(student.name).to match('Carlos')
    end
  end
end
