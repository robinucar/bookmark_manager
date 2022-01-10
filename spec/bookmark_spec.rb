require 'bookmark'

describe 'Bookmark' do
  describe '#show_bookmarks' do
    it 'returns all bookmars' do
      bookmarks = Bookmark.new
      expect(bookmarks.show_bookmarks).to include('http://www.google.com')
      expect(bookmarks.show_bookmarks).to include('http://www.facebook.com')
      expect(bookmarks.show_bookmarks).to include('http://www.instagram.com')
      expect(bookmarks.show_bookmarks).to include('http://www.makersacademy.com')
    end
  end
end