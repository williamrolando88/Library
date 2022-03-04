require_relative 'person'

class Teacher < Person
  attr_reader :specialization, :role

  def initialize(specialization, *args)
    super(*args)
    @specialization = specialization
    @role = 'Teacher'
  end

  def can_use_services?
    true
  end
end
