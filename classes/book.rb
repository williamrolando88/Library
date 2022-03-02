class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @author = author
    @title = title
    @rentals = []
  end
end
