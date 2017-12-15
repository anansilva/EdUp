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
    @publisher = current_publisher
  end

  def create
    @course = Course.new(course_params)
    @course.publisher_id = current_publisher.id
    if @course.save
      redirect_to publisher_courses_path(current_publisher)
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end
end
