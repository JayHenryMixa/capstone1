class SoldTosController < ApplicationController

  def index
    @sold_tos = Sold_to.all

  def new
    @sold_to = Sold_to.new
  end 

  def create
    @sold_to = Item.create({user_id: params[:user_id],
      holder_id: params[:holder_id]})
  end
end
