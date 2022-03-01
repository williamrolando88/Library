require './corrector'

class Person
  attr_accessor :age, :name
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    name_corrected = Corrector.new
    @id = Random.new.bytes(4)
    @name = name_corrected.correct_name(name)
    @age = age
    @parent_permission = parent_permission
    end
  end

  def can_use_services?
    return false unless @parent_permission || of_age?

    true
  end

  private

  def of_age?
    @age > 18
  end
end

person = Person.new(5, 'carlos')
pp person.name
# Carlos

guy = Person.new(5, 'sebastianosep')
pp guy.name
# Sebastiano
