require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new(title: 'Love', author: 'Ced')
  end

  describe '#new' do
    it 'returns a new book object' do
      @book.should be_an_instance_of Book
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      @book.title.should == "Love"
    end
  end

  describe '#author' do
    it 'returns the correct author' do
      @book.author.should == 'Ced'
    end
  end
end
