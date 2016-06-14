require 'sinatra/base'
require './models/link'

class BookMarkM < Sinatra::Base
  get '/' do
    'Hello BookMarkM!'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/links_new'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
