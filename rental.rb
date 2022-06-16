class Rental
  attr_accessor :date, :person, :book

  def initialize(date:, person:, book:)
    @date = date
    @person = person
    person.add_rental(self)
    @book = book
    book.add_rental(self)
  end
end
