# Create the has-many/belongs-to relationship between Classroom and Student. The following should be implemented:
# //     Create the has-many side (a classroom has many students).
#     Create the belongs-to side (a student belongs to a classroom).
# //     Make sure that when adding a student to a classroom it also sets the classroom for the student.
#     Make sure that when setting the classroom for a student it also adds it to the classrooms' students.
# Create the many-to-many (also has-many-through) relationship between Person and Book using the intermediate class Rental. The following should be implemented:
#     Create the has-many side of Book and Rental (a book has many rentals).
#     Create the belongs-to side of Rental and Book (a rental belongs to a book).
#     Create the has-many side of Person and Rental (a person has many rentals).
#     Create the belongs-to side of Rental and Person (a rental belongs to a person).
#     Modify the constructor of Rental so Book and Person are set in it.

class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student=(student)
    return if @students.include?(student)

    @students << student
    student.classroom = label
  end
end
