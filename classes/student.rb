require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(class_name, *args)
    super(*args)
    # classroom.add_student(self) if classroom.label == class_name
    @classroom = class_name
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
