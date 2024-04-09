class StaffSessionController < ApplicationController
  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.find_by(username: params[:staff][:username])

    if @staff && @staff.authenticate(params[:user][:password])
      session[:staff_id] = @staff.id
      redirect_to root_path
    else
      flash[:alert] = "Login failed"
      redirect_to login_path
    end
  end
end
