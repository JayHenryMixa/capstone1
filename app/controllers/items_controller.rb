class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    
    render :new
  end

  def create
    @item = Item.create({description: params[:description],
    price: params[:price], 
    location: params[:location], 
    shipping: params[:shipping], 
    webcam_source: params[:webcam_source]})
    
    redirect_to "/items/#{@item.id}"
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.update({description: params[:description], 
      price: params[:price], 
      location: params[:location], 
      shipping: params[:shipping], 
      webcam_source: params[:webcam_source]})
  
    redirect_to "/items"
  end
#limit to only user and admin deleting requests
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to '/items'
  end

end
