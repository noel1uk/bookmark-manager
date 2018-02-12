require 'sinatra/base'

class Bookmark < Sinatra::Base

  get '/' do 
    @links = ["https://www.google.co.uk/"]
    erb(:index)
  end

  run! if app_file == $0
end