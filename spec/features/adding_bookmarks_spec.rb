require 'pg'

feature 'Adding bookmarks' do
  scenario 'Adding a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://twitter.com')
    fill_in('title', with: 'Twitter')
    click_button('Add bookmark')

    expect(page).to have_link('Twitter', href: 'http://twitter.com')
  end

  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks/new')
    fill_in('url', with: 'not a real bookmark')
    click_button('Add bookmark')

    expect(page).not_to have_content "not a real bookmark"
    expect(page).to have_content "You must submit a valid URL."
  end
end
