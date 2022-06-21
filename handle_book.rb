class HandleBook
  def self.create_book(app)
    puts 'What is the book\'s title?'
    title = gets.chomp
    puts 'What is the book\'s author?'
    author = gets.chomp
    app.create_book(title: title, author: author)
    puts 'Book created!'
  end
end
