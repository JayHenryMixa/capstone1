class ImagesController < ApplicationController

  before_action :authenticate_user!, except:[:index, :show]

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    # @fish = Fish.find(params[:id])
    @image = Image.new
  end

  def create 
    @image = Image.create(url: params[:url])

    redirect_to "/images/#{@image.id}"
    # redirect_to "/fishes/#{@image.fish.id}"
  end 

  def edit
    @image = Image.find(params[:id])
  end

  def update  
    @image = Image.find(params[:id])
    @image.update(url: params[:url])

    redirect_to "/images"
    # redirect_to "/fishes/#{@image.fish.id}"
  end

  def destroy
    @image = Image.find(params[:id])
    # fish_id = @image.fish_id
    @image.destroy

    redirect_to '/images'
    # redirect_to "/fishes/#{fish_id}"
  end
end
