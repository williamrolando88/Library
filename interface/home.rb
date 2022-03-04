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

  def redirect(value)
    case value
    when 1
      puts @books.books
      return_home
    when 2
      puts @people.people
      return_home
    when 3
      @people.add_people
      return_home
    when 4
      @books.add_book
      return_home
    when 5
    when 6
    when 7
      exit?
    else
      puts "Please chose any of the given options\n"
      return_home
    end
  end

  def exit?
    print "Do you want to exit?\nPlease confirm [Y/N]:"
    input = gets.chomp.upcase
    case input
    when 'Y'
      puts "Have a nice day\n\n"
    when 'N'
      return_home
    else
      puts "Select a valid option\n"
      return_home
    end
  end

  def return_home
    puts "\n"
    home_page
  end
end
