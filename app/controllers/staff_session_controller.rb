class StaffSessionController < ApplicationController
  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.find_by(username: params[:staff][:username])

    if @staff && @staff.authenticate(params[:user][:password])
      session[:staff_id] = @staff.id
      if @staff.role == 'doctor'
        redirect_to doctor_dashboard_path
      elsif @staff.role == 'receptionist'
        redirect_to receptionist_dashboard_path
      end
      redirect_to root_path
    else
      flash[:alert] = "Login failed"
      redirect_to login_path
    end
  end
end
