require_relative 'corrector'

class Person
  attr_accessor :age, :name
  attr_reader :id

  def initialize(age, name ='Unknown', parent_permission = true)
    @id = Random.new.bytes(4)
    @name = _name(name)
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return false unless @parent_permission || of_age?

    true
  end

  private

  def of_age?
    @age > 18
  end

  def _name(name)
    corrector = Corrector.new
    corrector.correct_name(name)
  end
end
