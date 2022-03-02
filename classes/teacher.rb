require_relative 'person'

class Teacher < Person
  attr_reader :specialization
  
  def initialize(specialization, *args)
    super(*args)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
