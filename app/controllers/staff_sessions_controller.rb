class StaffSessionsController < ApplicationController
  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.find_by(username: params[:staff][:username])
    puts @staff.inspect

    if @staff&.authenticate(params[:staff][:password])
      session[:staff_id] = @staff.id
      if @staff.role == 'doctor'
        redirect_to doctor_dashboard_path
        puts 'Login successful: Good'
      elsif @staff.role == 'receptionist'
        redirect_to receptionist_dashboard_path
        puts 'Login successful: Good'
      else
        redirect_to root_path
      end
    else
      flash[:alert] = 'Login failed'
      puts 'Login failed: Bad'
      redirect_to login_path
    end
  end
end