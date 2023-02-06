require 'rails_helper'

RSpec.describe Book, type: :model do

  it 'is valid with valid attributes' do
    book = Book.new(title: "testBook")
    expect(book).to be_valid
  end

  it 'is valid with valid author' do
    book = Book.new(author: "testAuthor")
    expect(book).to be_valid
  end

  it 'is valid with valid price' do
    book = Book.new(price: 10.06)
    expect(book).to be_valid
  end

  it 'is valid with valid publishing date' do
    book = Book.new(publishedDate: '01/03/2023')
    expect(book).to be_valid
  end

end