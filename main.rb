#!/usr/bin/env ruby
require './app'
require './input'
require './storage'

def main
  app = App.new
  storage = Storage.new
  storage.prepare_storage
  storage.load_data(app)
  loop do
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    input = gets.chomp.to_i
    Input.check_input(app, input)
  end
  storage.save_all_data(app)

end

main
