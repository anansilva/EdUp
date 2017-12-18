class CoursesController < ApplicationController
before_action :authenticate_publisher!, only: [:index, :new, :create]

  def index
      @publisher = Publisher.find(params[:publisher_id])
      @courses = @publisher.courses
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
