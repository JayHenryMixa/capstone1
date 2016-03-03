class ItemsController < ApplicationController

  before_action :check_item_user_credentials!, except:[:index, :show, :new, :search]
  before_action :authenticate_user!, except:[:index, :show, :search]

  def index
    @items = Item.all
  end
#where(user_id: current_user.id)
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
    holder_id: params[:holder],
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
      holder_id: params[:holder_id]})

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

  private

  def check_item_user_credentials!
    item = Item.find(params[:id])

    unless current_user.id == item.user_id
      redirect_to '/'
    end
  end

end
