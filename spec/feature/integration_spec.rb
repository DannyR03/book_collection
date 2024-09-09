require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[price]", with: '19.99'
    fill_in "book[published_date]", with: '1997-06-26'
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created!')
  end

  scenario 'blank title' do
    visit new_book_path
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[price]", with: '19.99'
    fill_in "book[published_date]", with: '1997-06-26'
    click_on 'Create Book'
    expect(page).to have_no_content("Book was successfully created!")
  end

  scenario 'blank author' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: '19.99'
    fill_in "book[published_date]", with: '1997-06-26'
    click_on 'Create Book'
    expect(page).to have_no_content("Book was successfully created!")
  end
  
  scenario 'blank price' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[published_date]", with: '1997-06-26'
    click_on 'Create Book'
    expect(page).to have_no_content("Book was successfully created!")
  end
  
  scenario 'blank published_date' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[price]", with: '19.99'
    click_on 'Create Book'
    expect(page).to have_no_content("Book was successfully created!")
  end
end