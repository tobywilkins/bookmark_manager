
ENV['RACK_ENV'] = 'development'

require 'sinatra/base'
require_relative 'data_mapper_setup'


class BookMarkM < Sinatra::Base
  get '/' do
    'Hello BookMarkM!'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  post '/links' do
    link = Link.create(title: params[:title], url: params[:url])
    tag = Tag.first_or_create(name: params[:tags])
    link.tags << tag
    link.save
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/links_new'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
