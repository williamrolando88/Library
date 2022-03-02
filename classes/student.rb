require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom

  def initialize(classroom = nil, *args)
    super(*args)
    @classroom = classroom
    classroom.students << self unless classroom.nil?
  end

  def classroom=(classroom)
    @classroom = classroom
    
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
