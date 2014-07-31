

class Cats < Sinatra::Base

  get '/' do
    @page_title = "All about cats"
    erb :index
  end

  get '/:width/:height' do
    @page_title = "Random Cat Page"
    @width = params[:weight]
    @height = params[:height]
    erb :index
  end

  get '/me' do
    @page_title = "All about me"
    erb :me
  end

  get '/horse' do
    @page_title = "All about Horse"
    erb :horse
  end

  get '/cars' do
    @page_title = "All about Cars"
    erb :cars
  end

end
