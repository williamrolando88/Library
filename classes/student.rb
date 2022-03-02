require_relative 'person'

class Student < Person
  attr_reader :classroom
  
  def initialize(classroom, *args)
    super(*args)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
