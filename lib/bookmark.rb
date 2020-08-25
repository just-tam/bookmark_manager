require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
    # [
    #   "http://www.google.co.uk",
    #   "http://www.instagram.com",
    #   "http://www.facebook.com"
    # ]
  end
end
