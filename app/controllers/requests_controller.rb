class RequestsController < ApplicationController

  before_action :authenticate_user!, except:[:index, :show, :search]
  
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new

    @image = Image.new
  end

  def create
    @request = Request.create({name: params[:name],
      description: params[:description], 
      price: params[:price], 
      location: params[:location], 
      shipping: params[:shipping],
      user_id: current_user.id})

    @image = Image.create(url: params[:image],
      imagable_id: @request.id,
      imagable_type: @request.class.name)

    redirect_to "/requests/#{@request.id}"
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])

    @request.update({name: params[:name],
      description: params[:description], 
      price: params[:price], 
      location: params[:location], 
      shipping: params[:shipping]})

    redirect_to "/requests"
  end
#limit to only user or admin deleting requests
  def destroy  
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to '/requests'
  end
  
end
