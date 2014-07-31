

class Portfolio < Sinatra::Base
  get '/' do
    @page_title = "Home Page"
    erb :index
  end

  get '/first' do
    @page_title = "First Page"
    erb :first
  end

  get '/second' do
    @link = "/second"
    @page_title = "Second Page"
    erb :second
  end
  # 150x150  15px 15px
  # def link
  #
  #
  #
  #
  #   if @page_title == "First Page"
  #         @link[1] = nil
  #   elsif @page_title == "Second Page"
  #         @link[2] = nil
  #   elsif @page_title == "Home Page"
  #         @link[0] = nil

end
