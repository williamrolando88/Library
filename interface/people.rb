# require_relative '../classes/people'

class People
  attr_reader :people

  def initialize
    @people = []
  end

  def add_people
    print "Do you want to create a student (1) or a teacher (2)? [Input the number]: "
    input = gets.chomp.to_i
    case input
    when 1
      add_student
    when 2
      add_teacher
    else
      puts "Please select a valid option"
      add_people
    end
  end

  def add_student
    print ""
  end

  def add_teacher
    
  end
  
  
end
