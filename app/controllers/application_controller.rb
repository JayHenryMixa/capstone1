class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :footer_images
  before_action :footer_articles

  def authenticate_admin!
    redirect_to "/" unless current_user && current_user.admin
  end
  
  def footer_articles
    articles = Article.all
    @random_four_articles = articles.sample(4)
  end

  def footer_images
    images = Image.all
    @first_three_images = images.sample(3)
    @last_three_images = images.sample(3)
    @random_three_images = images.sample(3)
  end


  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :user_image << :location
  end

  
end
