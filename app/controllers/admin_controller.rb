class AdminController < ApplicationController
  #layout 'default'
  before_action :authenticate_user!
  before_action :is_admin

  def is_admin
    if !current_user.admin?
      flash[:error] = "Não está autorizado a acessar a página"
      redirect_to root_path
    else
      true
    end
  end

  def index
  end
end