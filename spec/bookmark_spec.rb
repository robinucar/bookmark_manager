require 'bookmark'

describe 'Bookmark' do
  
  describe '.show_bookmarks' do
    it 'returns all bookmars' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.add_bookmark(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.add_bookmark(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.add_bookmark(url: "http://www.google.com", title: "Google")
   
      bookmarks = Bookmark.show_bookmarks
   
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.add_bookmark' do
    it 'adds a new bookmark' do

      bookmark = Bookmark.add_bookmark(url: 'http://www.bbc.co.uk', title: 'BBC')
      persisted_data = PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")
  
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'BBC'
      expect(bookmark.url).to eq 'http://www.bbc.co.uk'
    end
  end

end

