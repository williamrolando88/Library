class Home
  def home_page
    home_str = "\nWelcome to School Library App
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
    when 7
      exit?
    else
      puts "Please chose any of the given options\n"
      return_home
    end
  end
  
  def exit?
    puts "Do you want to exit?\nPlease confirm [Y/N]:"
    input = gets.chomp.upcase
    if input == "Y"
      puts "Have a nice day"
      return
    elsif input == "N"
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