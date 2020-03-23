require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team = params[:name]
    @coach = params[:coach]
    @pguard = params[:pg]
    @sguard = params[:sg]
    @sforward = params[:sf]
    @pforward = params[:power_forward]
    @center= params[:center]
    # binding.pry
    erb :team

  end


end
