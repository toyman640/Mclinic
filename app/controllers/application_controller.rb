class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= session[:staff_id] && Staff.find_by(id: session[staff_id])
  end
end
