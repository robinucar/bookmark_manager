require 'bookmark'

describe 'Bookmark' do
  
    it 'returns all bookmars' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.facebook.com")
      expect(bookmarks).to include("http://www.instagram.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end

end