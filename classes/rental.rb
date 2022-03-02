require 'date'

class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = Date.parse(date)
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end
end
