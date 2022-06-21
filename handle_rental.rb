class HandleRental
  def self.create_rental(app)
    puts 'Select a book from the following list by number : '
    app.books.each_with_index do |book, index|
      puts "#{index}. [#{book.class}] - Title: #{book.title}, Author: #{book.author}"
    end
    id_book = gets.chomp
    book = app.books[id_book.to_i]

    puts 'Select a person from the following list by number (not id) : '
    app.people.each_with_index do |person, index|
      puts "#{index}. [#{person.class}] - Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    id_person = gets.chomp
    person = app.people[id_person.to_i]

    puts 'Date : '
    date = gets.chomp
    app.create_rental(book: book, person: person, date: date)
    puts 'Rental created!'
  end
end
