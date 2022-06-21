require 'json'
class Storage
  attr_reader :filesname

  def initialize
    @filesname = %w[rentals.json persons.json books.json]
  end

  def prepare_storage
    @filesname.each do |filename|
      File.new(filename, 'w+w') unless File.file?(filename)
    end
  end

  def save_all_data(app)
    save_books(app)
  end

  def save_books(app)
    return unless File.file?('books.json')
    book_file = File.open('books.json', 'w')
    app.books.each do |book|
      book_file.write(JSON.generate(book))
    end
    book_file.close
  end

  def save_person

  end

  def save_rental

  end

  def load_data
    load_books
  end

  def load_books
    JSON.load File.read('books.json') unless File.file?('books.json')
    # book_file = File.open('books.json')
=begin
    @app.books.each do |book|
      book_file.put
    end
=end
  end

  def load_rentals

  end

  def load_person

  end

end
