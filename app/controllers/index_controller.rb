class IndexController < ApplicationController
  layout "public"

  def index
    @posts = Post.order("created_at desc").limit(3)
    @articles =  Article.order("created_at desc").limit(3)
    @specialities = Speciality.order("name asc")
    @doctors = Doctor.all
  end

  def about

  end

  def service
    @specialities = Speciality.order("name asc")
  end

  def doctors
    @specialities = Speciality.order("name asc")
  end

  def faq
    @consultations = Consultation.where("response_message != ''").order("created_at desc")
  end

  def orders
    @specialities = Speciality.order("name asc")
    @doctors
  end

end