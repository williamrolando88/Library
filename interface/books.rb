require_relative '../classes/book'

class Books
  attr_reader :books

  def initialize
    @books = ['here comes a book']
  end

  def add_book(title, author)
    book = Book.new(title, author)
    @books << book
  end
end
