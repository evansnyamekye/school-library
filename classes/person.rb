require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

att_accessor :name, :age
att_reader :id

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age && @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
CapitalizeDecorator.new(person)
puts capitalize_decorator.correct_name
capitalize_trimmed_person = TrimmerDecorator.new(capitalize_person)
puts capitalize_trimmed_person.correct_name
