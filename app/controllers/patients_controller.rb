class PatientsController < ApplicationController
  before_action :require_login
  before_action :require_login

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    puts @patient.attributes.inspect
    if @patient.save
      redirect_to patients_path, notice: 'Patient was successfully created.'
    else
      render :new
    end
  end

  # def show
  #   @patient = Patient.find(params[:id])
  # end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patients_path, notice: 'Patient was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to patients_path, notice: 'Patient was successfully deleted.'
  end

  private

  def patient_params
    params.require(:patient).permit(:fullname, :age)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def require_login
    return if current_user

    flash[:alert] = 'You must be logged in to access this page.'
    redirect_to login_path
  end
end
