class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :random_image_cover
  def random_image_cover
     @detail = Detail.limit(5).order("RANDOM()").first
  end
end
