class AdminController < ApplicationController

  before_filter :test
  layout "admin"

  def index
  end
end
