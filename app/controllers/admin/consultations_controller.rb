class Admin::ConsultationsController < AdminController

  def new
    @consultation = Consultation.new
  end

  def index
    @consultations = Consultation.all
  end

  def show
    @consultation = Consultation.find(params[:id])
  end

  def update
    @consultation = Consultation.find(params[:id])
    @consultation.update_attributes params[:consultation]
    redirect_to admin_consultation_path(@consultation)
  end

  def create
    Consultation.create params[:@consultation]
    redirect_to admin_consultations_path
  end

  def destroy

  end

end