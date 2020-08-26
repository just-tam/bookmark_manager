require 'pg'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    Bookmark.create(url: "http://www.google.co.uk")
    Bookmark.create(url: "http://www.instagram.com")
    Bookmark.create(url: "http://www.facebook.com")

    visit('/bookmarks')
    expect(page).to have_content "http://www.google.co.uk"
    expect(page).to have_content "http://www.instagram.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
