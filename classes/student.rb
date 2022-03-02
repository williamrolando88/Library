require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom = nil, *args)
    super(*args)
    @classroom = classroom
    classroom.students << self unless classroom.nil?
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
