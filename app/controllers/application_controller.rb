class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_admin
    current_admin ||= Admin.where(id: session[:admin_id]).first
  end #current_user endtag
  helper_method :current_admin

  def authenticate_admin
    unless session[:admin_id].present? && current_admin.present?
      flash[:alert] = 'You haven`t started your quest yet'
      redirect_to login_path    
    end # unless endtag
  end # authenticate_admin endtag
end # ApplicationController endtag
