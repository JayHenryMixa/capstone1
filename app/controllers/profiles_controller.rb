class ProfilesController < ApplicationController
  def index
    @users = User.all
  end 

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new

    render :new
  end

  def create
    @user = User.create({email: params[:email], 
      first_name: params[:first_name], 
      last_name: params[:last_name]})
    redirect_to "/profiles/#{@pofiles.id}"
  end 

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.update({email: params[:email], 
      first_name: params[:first_name], 
      last_name: params[:last_name]})
  
    render :edit
  end

  def delete
    #will be an admin function
    @user = User.find(params[:id])
    @user.destroy

    redirect_to '/users'
  end
end
