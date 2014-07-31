require 'sinatra'
require 'pry'

    get '/' do
      erb :index
    end

  post '/about' do
    @name = params[:name]
    @user = params[:user]
    @age = params[:age]
    @check = params[:check]
    @radio = params[:radio]
    @sex = params[:sex]
    @language = params[:language]
    @bio = params[:bio]
    @exp = params[:exp]
    erb :about
  end
