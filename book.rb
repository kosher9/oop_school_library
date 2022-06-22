require 'json'
class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title:, author:)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def to_json(*_args)
    JSON.dump({
                title: @title,
                author: @author
              })
  end

  def self.from_json(string)
    data = JSON.parse string
    new(title: data['title'], author: data['author'])
  end
end
