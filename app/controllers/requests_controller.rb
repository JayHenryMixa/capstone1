class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.create({description: params[:description], 
      price: params[:price], 
      location: params[:location], 
      shipping: params[:shipping]})

    redirect_to "/requests/#{@request.id}"
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])

    @request.update({description: params[:description], 
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
