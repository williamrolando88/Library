require_relative '../classes/teacher'

describe 'Generate teacher' do
  context 'given the valid inputs' do
    it 'should create a teacher with age: 50 and specialization: Maths' do
      teacher = Teacher.new('Maths', 50)
      expect(teacher.age).to eql(50)
      expect(teacher.specialization).to match('Maths')
      expect(teacher.name).to match('Unknown')
    end
    it 'should create a teacher with age = 40 and called Carlos, teaching Maths' do
      teacher = Teacher.new('Maths', 40, 'Carlos')
      expect(teacher.age).to eql(40)
      expect(teacher.specialization).to match('Maths')
      expect(teacher.name).to match('Carlos')
    end
  end
end
