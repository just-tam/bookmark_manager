require 'pg'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    Bookmark.create(url: "http://www.google.co.uk", title: "Google")
    Bookmark.create(url: "http://www.instagram.com", title: "Instagram")
    Bookmark.create(url: "http://www.facebook.com", title: "Facebook")

    visit('/bookmarks')
    expect(page).to have_link("Google", href: "http://www.google.co.uk")
    expect(page).to have_link("Instagram", href: "http://www.instagram.com")
    expect(page).to have_link("Facebook", href: "http://www.facebook.com")
  end
end
