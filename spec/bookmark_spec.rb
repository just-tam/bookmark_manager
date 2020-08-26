require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.instagram.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.facebook.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.google.co.uk")
      expect(bookmarks).to include("http://www.instagram.com")
      expect(bookmarks).to include("http://www.facebook.com")

    end
  end

    describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.twitter.com')

      expect(Bookmark.all).to include 'http://www.twitter.com'
    end
  end
end
