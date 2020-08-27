feature 'Update a bookmark' do
  scenario 'A user can change a bookmark to something else' do
    bookmark = Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter')
    visit('/bookmarks')
    expect(page).to have_link('Twitter', href: 'http://www.twitter.com')

    first('.bookmark').click_button 'Edit'

    fill_in('url', with: "http://www.snakersacademy.com")
    fill_in('title', with: "Snakers Academy")
    click_button('Submit')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Twitter', href: 'http://www.twitter.com' )
    expect(page).to have_link('Snakers Academy', href: 'http://www.snakersacademy.com')
  end
end
