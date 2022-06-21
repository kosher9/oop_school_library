require './handle_person'
require './check_person'
require './handle_book'
require './handle_rental'

class Input

  def self.list_options(app, input)
    puts input
    case input
    when 1
      puts 'List of books'
      app.all_book
    when 2
      puts 'List of person'
      app.all_person
    else
      puts 'Invalid input!'
    end
  end

  def self.check_input_create_people(app)
    puts 'Do you want to create a student (1) or a teacher? (2) [Input 1 or 2]'
    input = gets.chomp.to_i
    case input
    when 1
      HandlePerson.create_student(app)
    when 2
      HandlePerson.create_teacher(app)
    else
      puts 'Invalid input!'
    end
  end

  def self.check_input(app, input)
    case input
    when 1..2
      list_options(app, input)
    when 3..5
      create_options(app, input)
    when 6
      CheckPerson.person_info(app)
    when 7
      puts 'Goodbye!'
      raise StopIteration
    else
      puts "You input #{input}"
    end
  end

  def self.create_options(app, input)
    case input
    when 3
      check_input_create_people(app)
    when 4
      HandleBook.create_book(app)
    when 5
      HandleRental.create_rental(app)
    else
      puts 'Invalid input!'
    end
  end
end