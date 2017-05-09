class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_travels_path
    else
      session[:previous_url] || travels_path
    end
  end
end
