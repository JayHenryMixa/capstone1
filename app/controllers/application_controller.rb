class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_admin!
    redirect_to "/" unless current_user && current_user.admin
  end

  # def get_image
  #   array = []
  #   Images.all.each do |image|
  #   array << image

  #    end
  #     random_image = array.sample
  # end

  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name
  end

  
end
