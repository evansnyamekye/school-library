class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    @person = person
    @book = book

    person.rental << self
    book.rentals << self
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
