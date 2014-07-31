class HomeController < ApplicationController
  def index
    @hits = Hit.all.limit(5)
  end
end
