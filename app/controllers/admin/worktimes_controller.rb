class Admin::WorktimesController < AdminController

  def new
      @worktime = Worktime.new
  end

  def index
    @worktimes = Worktime.all
  end

  def show
      @worktime = Worktime.find(params[:id])
  end

  def update
    @worktime = Worktime.find(params[:id])
    @worktime.update_attributes params[:worktime]
    if params[:commit] == "save"
      redirect_to admin_worktime_path
    else
      redirect_to admin_worktime_path(@worktime)
    end
  end

  def create
    Worktime.create params[:worktime]
    redirect_to admin_worktimes_path
  end

  def destroy
    Worktime.find(params[:id]).destroy
    redirect_to admin_worktimes_path
  end

end