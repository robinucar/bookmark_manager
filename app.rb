require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
    enable :sessions
    configure :development do
        register Sinatra::Reloader
    end


    # Routes
    get '/' do
        #p ENV
        @bookmarks = Bookmark.new.show_bookmarks
        erb :index

    end

    get '/new_bookmark' do
        erb :new_bookmark
    end
    
    post '/' do
        @url = Bookmark.new.add_bookmark(params['url'])
        connection = PG.connect(dbname: 'bookmark_manager_test')
        connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
        redirect '/'
    end
    

run! if app_file == $0

end