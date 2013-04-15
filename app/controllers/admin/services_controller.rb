class Admin::ServicesController < AdminController

  def new
    @service = Service.new
  end

  def index
    @service = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update_attributes params[:service]
    if params[:save]
      redirect_to admin_services_path
    else
      redirect_to admin_service_path(@service)
    end
  end

  def create
    @service = Service.create params[:service]
    if params[:save]
      redirect_to admin_services_path
    else
      redirect_to admin_service_path(@service)
    end
  end

  def destroy
    Service.find(params[:id]).destroy
    redirect_to admin_services_path
  end

end