require 'spec_helper'

describe Rental do
  context 'initialization' do
    it 'gets initialized with right data' do
      student = Student.new(age: 14, name: 'Ced', parent_permission: true)
      book = Book.new(title: 'Love', author: 'Ced')
      date = '2015-12-05'

      rental = Rental.new(date: date, person: student, book: book)

      expect(rental.date).to eq date
      expect(rental.person).to be_kind_of(Person)
      expect(rental.book).to be_kind_of(Book)
    end
  end

  context 'rental gets added to the relevant person and book' do
    student = Student.new(age: 14, name: 'Ced', parent_permission: true)
    book = Book.new(title: 'Love', author: 'Ced')
    date = '2015-12-05'

    rental = Rental.new(date: date, person: student, book: book)

    it 'adds rental to the person' do
      expect(student.rentals).to eq [rental]
    end

    it 'adds rental to the book' do
      expect(book.rentals).to eq [rental]
    end
  end
end
