require 'pg'

feature 'Adding bookmarks' do
  scenario 'Adding a bookmark to list of bookmarks' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://twitter.com')
    click_button('Add bookmark')

    expect(page).to have_content 'http://twitter.com'
  end
end
