class ShoutsController < ApplicationController
  before_action :find_shout, only: [:update, :edit, :show, :destroy]
    def index
      @shouts = Shout.all
    end

    def show
    end

    # def new
    #   @shout = Shout.new
    # end
    #
    # def create
    #   @shout = Shout.new[shout_params]
    #   if @shout.save
    #     redirect_to shouts_path
    #   else
    #     render :new
    #   end
    # end
    #
    # def edit
    # end
    #
    # def update
    #   if @shout.update_attributes(shout_params)
    #     redirect_to shouts_path
    #   else
    #     render :edit
    #   end
    # end
    #
    # def destroy
    #   @shout.destroy
    # end
    #
    private
    #
    # def shout_params
    #   params.require(:shout).params(:message)
    # end

    def find_shout
      @shout = Shout.find(params[:id])
    end

end
