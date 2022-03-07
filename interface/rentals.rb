require_relative '../classes/rental'

class Rentals
  attr_reader :rentals

  def initialize
    @rentals = []
  end

  def add_rental(date, person, book)
    new_rental = Rental.new(date, person, book)
    @rentals << new_rental
    puts "Rental created succesfully\n"
  end
end
