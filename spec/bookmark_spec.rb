require 'bookmark'

describe 'Bookmark' do
  describe '.show_bookmarks' do
    it 'returns all bookmarks' do
      expect(Bookmark.show_bookmarks).to include('http://www.google.com')
      expect(Bookmark.show_bookmarks).to include('http://www.facebook.com')
      expect(Bookmark.show_bookmarks).to include('http://www.instagram.com')
      expect(Bookmark.show_bookmarks).to include('http://www.makersacademy.com')
    end
  end
end

