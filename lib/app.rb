require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  get '/enter_names' do
    erb(:enter_names)
  end

  post '/player_names' do
    p params
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
