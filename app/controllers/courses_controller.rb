class CoursesController < ApplicationController
before_action :authenticate_publisher!, only: [:new, :create]

  def index
    if !current_publisher.nil?
      @courses = Course.all.where(publisher_id: current_publisher.id)
    else
      @courses = Course.all
    end
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.publisher = current_publisher
    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end
end
