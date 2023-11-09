require_relative 'student'
require_relative 'classroom'
require_relative 'person'
require_relative 'rental'
require_relative 'book'

# Create Instances

class1 = classroom.new('maths')
student1 = Student.new(12)
class1.add_student(student1)
student2 = Student.new(15)
student2.classroom = class1

book1 = Book.new('book1', 'author1')
person1 = Person.new(12)
rental1 = Rental.new('2017-12-22', book1, person1)

puts rental1.book.title
puts rental1.person.age
puts student2.classroom.label
puts class1.students.students.map(&:age)
