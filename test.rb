#!/usr/bin/env ruby
require './storage'
require './app'

def test
  app = App.new
  app.create_book(title: 'wdv', author: 'vwevw')
  app.books_to_json

  app.create_student(age: 24, name: 'ced', parent_permission: true, classroom: nil)
  app.create_student(age: 26, name: 'cedric', parent_permission: true, classroom: nil)
  app.create_student(age: 30, name: 'Max', parent_permission: true, classroom: nil)
  app.create_teacher
  app.people_to_json

  # storage = Storage.new
  # storage.prepare_storage
  # storage.save_books(app)
  # storage.load_books
  # puts(file_2)
end

test
