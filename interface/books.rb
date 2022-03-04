require_relative '../classes/book'

class Books
  def initialize
    @books = []
  end

  def add_book
    print 'Title: '
    title = gets.chomp
    while title.empty?
      print 'Please type a valid title: '
      title = gets.chomp
    end

    print 'Author: '
    author = gets.chomp
    while author.empty?
      print 'Please type a valid author name: '
      author = gets.chomp
    end

    book = Book.new(title, author)
    @books << book
    puts "Book created succesfully"
  end

  def books
    @books.map { |book| book_details(book) }
  end

  def book_details (book)
    puts "Title: \"#{book.title}\", Author: #{book.author}"
  end
  
end
