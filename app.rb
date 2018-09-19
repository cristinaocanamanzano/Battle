
require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "super secret"

  # get '/' do
  #   "Testing infrastructure working!"
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  get '/player_attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play_after_attack
  end
run! if app_file == $0
end
