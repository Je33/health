class ApplicationController < ActionController::Base
  def  test
    @post = 5
  end
  protect_from_forgery
end
