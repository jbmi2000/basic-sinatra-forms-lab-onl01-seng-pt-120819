require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team = params[:name]
    @coach = params[:coach]
    @pguard = params[:point_guard]
    @sguard = params[:shooting_guard]
    @sforward = params[:small_forward]
    @pforward = params[:power_forward]
    @center= params[:center]
    # binding.pry
    erb :team

  end


end
