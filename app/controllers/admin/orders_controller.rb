class Admin::OrdersController < AdminController

  def new
    @order = Order.new
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update_attributes params[:orders]
    redirect_to admin_order_path(@order)
  end

  def create

  end

  def destroy
    Order.find(params[:id]).destroy
    redirect_to admin_orders_path
  end

end