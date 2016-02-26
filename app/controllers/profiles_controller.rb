class ProfilesController < ApplicationController
  
  before_action :check_user_credentials!, except:[:index, :show]

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
    redirect_to "/profiles/#{@user.id}"
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
    @user = User.find(params[:id])
    @user.destroy

    redirect_to '/profiles'
  end

  private

  def check_user_credentials!
     if current_user.id == @profile.user.id
      authenticate_user!
     else
      redirect_to '/'
    end
  end
    

end
