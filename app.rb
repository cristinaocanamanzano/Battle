
require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'


class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "super secret"

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/player_attack' do
    @game = Game.instance
    @game.attack(@game.opponent)
    erb :play_after_attack
  end


run! if app_file == $0
end
