require_relative '../classes/classroom'
require_relative '../classes/student'

describe 'Create classroom object' do
  context 'given valid inputs' do
    it 'create classroom: Math' do
      classroom = Classroom.new('Math')
      expect(classroom.label).to match('Math')
      expect(classroom.students).to eql([])
    end
    it 'asign an existing student to a new classroom: Math' do
      student_a = Student.new(nil, 5, 'Carlos')
      classroom = Classroom.new('Math')
      classroom.add_student(student_a)
      expect(classroom.label).to match('Math')
      expect(classroom.students.first.name).to eql('Carlos')
      expect(student_a.classroom.label).to match('Math')
    end
    it 'do not asign twice an existing student to a new classroom: Math' do
      student_a = Student.new(nil, 5, 'Carlos')
      classroom = Classroom.new('Math')
      classroom.add_student(student_a)
      classroom.add_student(student_a)
      expect(classroom.label).to match('Math')
      expect(classroom.students.count).to eql(1)
    end
    it 'add a new student to an existing classroom: Math' do
      mathematics = Classroom.new('Math')
      student_a = Student.new(mathematics, 5, 'Carlos')
      expect(mathematics.students.count).to eql(1)
      expect(mathematics.students.first.name).to eql('Carlos')
      expect(student_a.classroom.label).to match('Math')
    end
  end
end
