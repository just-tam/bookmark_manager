require 'pg'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

     # Add the test data
     connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.co.uk');")
     connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.instagram.com');")
     connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.facebook.com');")

    visit('/bookmarks')
    expect(page).to have_content "http://www.google.co.uk"
    expect(page).to have_content "http://www.instagram.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
