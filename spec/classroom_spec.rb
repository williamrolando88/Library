require_relative '../classes/classroom.rb'

describe "Create classroom object" do
  context "Given valid inputs" do
    it "classroom: Math" do
      classroom = Classroom.new("Math")
      expect(classroom.label).to match('Math') 
      expect(classroom.students).to eql([])
    end
  end
end
