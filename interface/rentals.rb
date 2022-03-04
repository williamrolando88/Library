require_relative '../classes/rental'

class Rentals
  attr_reader :rentals

  def initialize
    @rentals = []
  end
end
