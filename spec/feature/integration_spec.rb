require 'rails_helper'

RSpec.describe Book, type: :feature do

  it 'book created with title success' do
    visit new_book_path
    fill_in 'Title', with: 'Cool Title'
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end

  it 'rainy day (no title)' do
    visit new_book_path
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end

  it 'book created with author success' do
    visit new_book_path
    fill_in 'Author', with: 'Emily Wax'
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end

  it 'book created with price success' do
    visit new_book_path
    fill_in 'Price', with: 18.88
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end

  it 'book created with publishing date success' do
    visit new_book_path
    fill_in 'Publisheddate', with: '01/08/2023'
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end

end