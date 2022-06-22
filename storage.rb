require 'json'
require './person'
require './book'

class Storage
  attr_reader :filesname

  def initialize
    @filesname = %w[rentals.json people.json books.json]
  end

  def prepare_storage
    @filesname.each do |filename|
      File.new(filename, 'w+') unless File.file?(filename)
    end
  end

  def save_all_data(app)
    save_books(app)
    save_person(app)
    save_rental(app)
  end

  def save_books(app)
    return unless File.file?('books.json')

    book_file = File.open('books.json', 'w')
    book_file.write(JSON.generate(app.books))
    book_file.close
  end

  def save_person(app)
    return unless File.file?('people.json')

    people_file = File.open('people.json', 'w')
    people_file.write(JSON.generate(app.people))
    people_file.close
  end

  def save_rental(app)
    return unless File.file?('rentals.json')

    rental_file = File.open('rentals.json', 'w')
    rental_file.write(JSON.generate(app.rentals))
    rental_file.close
  end

  def load_data(app)
    load_books(app)
    load_person(app)
    load_rentals(app)
  end

  def load_books(app)
    return unless File.file?('books.json')
    return if File.zero?('books.json')

    book_file = File.open('books.json', 'r')
    book_list = JSON.parse(book_file.read)
    book_list.each { |book| app.create_book(title: book['title'], author: book['author']) }
    # puts app.books
    book_file.close
  end

  def load_rentals(app)
    return unless File.file?('rentals.json')
    return if File.zero?('rentals.json')

    rental_file = File.open('rentals.json', 'r')
    rental_list = JSON.parse(rental_file.read)
    rental_list&.each do |rental|
      person = Person.new(id: rental['person']['id'], age: rental['person']['age'], name: rental['person']['name'],
                          parent_permission: rental['person']['parent_permission'])
      puts person
      book = Book.new(title: rental['book']['title'], author: rental['book']['author'])
      puts book
      app.create_rental(date: rental['date'], person: person, book: book)
    end
    rental_file.close
  end

  def load_person(app)
    return unless File.file?('people.json')
    return if File.zero?('people.json')

    person_file = File.open('people.json', 'r')
    person_list = JSON.parse(person_file.read)
    person_list.each do |p|
      if p.key?('specialization')
        app.create_teacher(id: p['id'], specialization: p['specialization'], age: p['age'], name: p['name'],
                           parent_permission: p['parent_permission'])
      else
        app.create_student(id: p['id'], age: p['age'], name: p['name'], parent_permission: p['parent_permission'],
                           classroom: p['classroom'])
      end
    end
    # puts app.rentals
    person_file.close
  end

  # This is for test purpose
  def clear_all(app)
    app.people = []
    app.books = []
    app.rentals = []
  end
end
