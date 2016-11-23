require 'sinatra/base'

class Battle < Sinatra::Base
  get '/battle' do
    'Hello Battle!'
  end

  get '/' do
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
