#!/usr/bin/env ruby
require './storage'
require './app'
# require 'pry'

# This is for test purpose
def test
  app = App.new
  app.clear_data

  app.create_book(title: 'wdv', author: 'vwevw')
  app.create_book(title: 'wdv', author: 'vwevw')
  app.create_book(title: 'wdv', author: 'vwevw')

  app.create_student(id: nil, age: 24, name: 'ced', parent_permission: true, classroom: nil)
  app.create_student(id: nil, age: 26, name: 'cedric', parent_permission: true, classroom: nil)
  app.create_student(id: nil, age: 30, name: 'Max', parent_permission: true, classroom: nil)
  app.create_teacher(id: nil, specialization: 'Math', age: 20, name: 'Life', parent_permission: false)
  app.create_teacher(id: nil, specialization: 'Info', age: 27, name: 'Lijbkfe', parent_permission: false)

  storage = Storage.new
  storage.prepare_storage
  storage.save_all_data(app)
  storage.load_data(app)

  # binding.pry
  # storage.load_books
  # puts(file_2)
end

test
# binding.pry
