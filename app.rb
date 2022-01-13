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
        @bookmarks = Bookmark.show_bookmarks
        erb :index

    end

    get '/new_bookmark' do
        erb :new_bookmark
    end
    
    post '/' do
        Bookmark.add_bookmark(url: params[:url])
        p params
        redirect '/'
      end
    

run! if app_file == $0

end