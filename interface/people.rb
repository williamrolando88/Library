require_relative '../classes/student'
require_relative '../classes/teacher'

class People
  def initialize
    @people = []
  end

  def add_people
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    input = gets.chomp.to_i
    case input
    when 1
      add_student
    when 2
      add_teacher
    else
      puts 'Please select a valid option'
      add_people
    end
  end

  def people
    @people.map { |person| 
      puts "[#{person.role}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end
  
  def people_by_index
    @people.each_with_index.map { |person, index| 
      puts "#{index}) [#{person.role}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end
  
  def get_by_index(index)
    @people[index]
  end

  def get_rentals_by_id(id)
    @people.map {  |person|
      if person.id == id
        person.rentals.map { |rental|
          puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author} "
        }
      end
    }
  end
  

  private

  def add_student
    # Request for a name and validates it to not be empty
    print 'Name: '
    name = gets.chomp
    while name.empty?
      print 'Please type a valid name: '
      name = gets.chomp
    end

    # Request for an age and validates it to be a number
    print 'Age: '
    age = gets.chomp.to_i
    while age.zero?
      print 'Please type a valid age: '
      age = gets.chomp.to_i
    end

    # Request for a parent permission and validates the given value and converts it to boolean
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.upcase
    while (/Y|N/ =~ parent_permission).nil?
      print 'Please select a valid option [Y/N]: '
      parent_permission = gets.chomp.upcase
    end
    if parent_permission == "Y"
      parent_permission = true
    elsif parent_permission == 'N'
      parent_permission = false
    end
  
    # Creates a new student object and pushes inside
    new_student = Student.new(age, name, parent_permission)
    @people << new_student
    puts "Person created succesfully\n"
  end

  def add_teacher
    # Request for a name and validates it to not be empty
    print 'Name: '
    name = gets.chomp
    while name.empty?
      print 'Please type a valid name: '
      name = gets.chomp
    end
    
    # Request for an age and validates it to be a number
    print 'Age: '
    age = gets.chomp.to_i
    while age.zero?
      print 'Please type a valid age: '
      age = gets.chomp.to_i
    end
    
    # Request for a specialization and validates it to not be empty
    print 'Specialization: '
    specialization = gets.chomp
    while specialization.empty?
      print 'Please type a valid specialization: '
      specialization = gets.chomp
    end

    # Creates a new teacher object and pushes inside
    new_teacher = Teacher.new(specialization, age, name)
    @people << new_teacher
    puts "Person created succesfully\n"
  end

  def person_details(person)
    puts 
  end
end
