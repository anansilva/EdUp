class Api::V1::CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(course_params)
    @course.publisher_id = current_publisher.id
    if @course.save
      redirect_to api_v1_courses_path
    else
      render :new
    end
  end

 private

  def course_params
    params.require(:course).permit(:name, :description)
  end

end
