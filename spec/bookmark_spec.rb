require 'bookmark'

describe 'Bookmark' do
  let(:bookmarks) {Bookmark.new}
  describe '#show_bookmarks' do
    it 'returns all bookmars' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")


      expect(bookmarks.show_bookmarks).to include('http://www.google.com')
      expect(bookmarks.show_bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks.show_bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end

  describe '#add_bookmark' do
    it 'adds a new bookmark' do

      bookmarks.add_bookmark('http://www.bbc.co.uk')
      expect(bookmarks.show_bookmarks).to include('http://www.bbc.co.uk')
    end
  end

end

