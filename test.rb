#!/usr/bin/env ruby
require './storage'
require './app'
def test
  app = App.new
  app.create_book(title: 'wdv', author: 'vwevw')
  storage = Storage.new
  storage.prepare_storage
  storage.save_books(app)
  storage.load_books
  # puts(file_2)
end

test
