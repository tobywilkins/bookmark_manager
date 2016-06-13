require 'sinatra/base'
require 'data_mapper'
require './models/link'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello BookmarkManager!'
  end

  get '/links' do
    @links = Link.all
    erb(:links)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
