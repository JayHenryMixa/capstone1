class ProfilesController < ApplicationController
  
  before_action :authenticate_admin!, only:[:admin]
  before_action :check_user_credentials!, except:[:index, :show, :admin]

  def index
    @users = User.all
  end 


  def show
    @user = User.find(params[:id])
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

  def admin 
    
  end

  private

  def check_user_credentials!
    unless current_user.id == params[:id].to_i
      redirect_to '/'
    end
  end
    

end
