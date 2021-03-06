require_relative 'corrector'
require_relative 'rental'

class Person
  attr_accessor :age, :name, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = true)
    @name = validate_names(name)
    @age = age
    @parent_permission = parent_permission
    @id = rand 0..999
    @rentals = []
  end

  def can_use_services?
    return false unless @parent_permission || of_age?

    true
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age > 18
  end

  def validate_names(name)
    Corrector.new.correct_name(name)
  end
end
