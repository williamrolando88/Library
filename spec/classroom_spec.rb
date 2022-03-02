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
      student_a = Student.new('', 5, 'Carlos')
      classroom = Classroom.new('Math')
      classroom.add_student = (student_a)
      expect(classroom.label).to match('Math')
      expect(classroom.students.first.name).to eql('Carlos')
      expect(student_a.classroom).to match('Math')
    end
    # it "add a new student to an existing classroom: Math" do
    #   mathematics = Classroom.new("Math")
    #   studentA = Student.new("Math", 5, 'Carlos')
    #   expect(mathematics.label).to match('Math')
    #   expect(mathematics.students).to eql(["Carlos"])
    #   expect(studentA.classroom).to match('Math')
    # end
  end
end
