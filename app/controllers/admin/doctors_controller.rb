class Admin::DoctorsController < AdminController

  def new
      @doctor = Doctor.new
  end

  def index
    @doctors = Doctor.all
  end

  def show
     @doctor = Doctor.find(params[:id])
  end

  def update
      @doctor = Doctor.find(params[:id])
      @doctor.update_attributes params[:doctor]
      redirect_to admin_doctor_path(@doctor)
  end

  def create
    Doctor.create params[:doctor]
    redirect_to admin_doctors_path
  end

  def destroy
    Doctor.find(params[:id]).destroy
    redirect_to admin_doctors_path
  end

end