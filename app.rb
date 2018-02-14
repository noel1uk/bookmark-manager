require 'sinatra/base'
require './lib/link.rb'
require './lib/database_connection_setup.rb'
class Bookmark < Sinatra::Base

  get '/' do
    @links = Link.all
    erb(:index)
  end

  post '/create_link' do
    url = params['url']
    Link.add(url)
    redirect('/')
  end

  run! if app_file == $0

end
