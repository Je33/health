class Admin::SpecialitiesController < AdminController
  def new
      @speciality = Speciality.new
  end

  def index
    @specialities = Speciality.all
  end

  def show
     @speciality = Speciality.find(params[:id])
  end

  def update
    @speciality = Speciality.find(params[:id])
    @speciality.update_attributes params[:speciality]
    if params[:commit] == "save"
      redirect_to admin_speciality_path
    else
      redirect_to admin_speciality_path(@speciality)
    end
  end

  def create
    Speciality.create params[:speciality]
    redirect_to admin_specialities_path
    #render :json => params
  end

  def destroy
    Speciality.find(params[:id]).destroy
    redirect_to admin_specialities_path
  end

end