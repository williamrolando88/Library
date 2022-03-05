require_relative 'books'
require_relative 'people'
require_relative 'rentals'

class Home
  attr_reader :books, :people, :rentals

  def initialize
    @books = Books.new
    @people = People.new
    @rentals = Rentals.new
  end

  def home_page
    home_str = "Welcome to School Library App
    \nPlease choose an option by entering a number:\n" \
    "1 - List all books\n" \
    "2 - List all people\n" \
    "3 - Create a person\n" \
    "4 - Create a book\n" \
    "5 - Create a rental\n" \
    "6 - List all rentals for a given person id\n" \
    "7 - Exit\n\n"
    puts home_str
    user_input = gets.chomp.to_i
    redirect(user_input)
  end

  private

  def redirect(value)
    case value
    when 1
      puts @books.books
      home_page
    when 2
      puts @people.people
      home_page
    when 3
      @people.add_people
      home_page
    when 4
      @books.add_book
      home_page
    when 5
      create_rental
      home_page
    when 6
      print 'ID of person: '
      id = gets.chomp.to_i
      @people.get_rentals_by_id(id)
      home_page
    when 7
      exit?
    else
      puts "Please chose any of the given options\n"
      home_page
    end
  end

  def create_rental
    puts 'Select a book from the following list by its index:'
    @books.books_by_index
    book_index = gets.chomp.to_i
    puts "\n"
    book = @books.get_by_index(book_index)

    puts 'Select a person from the following list by its index (not ID):'
    @people.people_by_index
    person_index = gets.chomp.to_i
    puts "\n"
    person = @people.get_by_index(person_index)

    print 'Date (dd/mm/yyyy): '
    date = gets.chomp

    @rentals.add_rental(date, person, book)
  end

  def exit?
    print "Do you want to exit?\nPlease confirm [Y/N]:"
    input = gets.chomp.upcase
    case input
    when 'Y'
      puts "Have a nice day\n\n"
    when 'N'
      home_page
    else
      puts "Select a valid option\n"
      home_page
    end
  end
end
