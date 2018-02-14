require 'sinatra/base'
require './lib/link.rb'

class Bookmark < Sinatra::Base

  get '/' do
    @links = Link.all
    erb(:index)
  end

  post '/create_link' do
    url = params['url']
    if ENV["ENVIRONMENT"] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
    p url
    conn.exec( "INSERT INTO links (url) VALUES ('#{url}')")
    redirect('/')
  end

  run! if app_file == $0

end
