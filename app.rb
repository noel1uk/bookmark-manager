require 'sinatra/base'
require './lib/link.rb'

class Bookmark < Sinatra::Base

  get '/' do
    @links = Link.all
    erb(:index)
  end

  post '/create_link' do
    url = params['url']
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec( "INSERT INTO links (url) VALUES ('#{url}')")

    redirect('/')
    # url = params['url']
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO links (url) VALUES('#{url}')")
    # redirect '/'
  end


  run! if app_file == $0
end
