require_relative 'person'

class Student < Person
  attr_reader :role

  def initialize(*args)
    super(*args)
    @role = 'Student'
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
