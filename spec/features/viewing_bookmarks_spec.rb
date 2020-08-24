feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.co.uk"
    expect(page).to have_content "http://www.instagram.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
