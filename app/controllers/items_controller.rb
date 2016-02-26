class ItemsController < ApplicationController

  before_action :authenticate_user!, except:[:index, :show, :search]

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new

    @image = Image.new
    
    render :new
  end

  def create
    @item = Item.create({name: params[:name], 
      description: params[:description],
    price: params[:price], 
    location: params[:location], 
    shipping: params[:shipping], 
    webcam_source: params[:webcam_source],
    user_id: current_user.id})

    @image = Image.create(url: params[:image], 
      imagable_id: @item.id,
      imagable_type: @item.class.name,
      user_id: current_user.id )
    
    redirect_to "/items/#{@item.id}"
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])


    @item.update({name: params[:name],
      description: params[:description], 
      price: params[:price], 
      location: params[:location], 
      shipping: params[:shipping], 
      webcam_source: params[:webcam_source]})

    @image.update

  
    redirect_to "/items"
  end
#limit to only user and admin deleting requests
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to '/items'
  end

  def search
    @items = Item.where("description LIKE ?", "%#{params[:search]}%")

    render :index
  end 

end
