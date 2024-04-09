class StaffController < ApplicationController
  def index
    @users = Staff.all
  end

  def new
    @user = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    
    if @staff.save
      flash[:notice] = "Staff created successfully"
      redirect_to users_path
    else
      flash[:alert] = "Staff not created"
      render :new, status: :unprocessable_entity
    end
     
  end

  def staff_params
    params.require(:staff).permit(:username, :password, :password_confirmation, :string)
  end
end
