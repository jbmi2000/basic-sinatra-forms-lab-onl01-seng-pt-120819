require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pguard = params[:pg]
    @sguard = params[:sg]
    @sforward = params[:sf]
    @pforward = params[:pf]
    @center= params[:c]
    # binding.pry
    erb :team

  end


end
