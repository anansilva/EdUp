class Api::V1::CoursesController < ApplicationController

  acts_as_token_authentication_handler_for Publisher

  before_action do
    if current_publisher != nil
      authenticate_publisher!
    else
      authenticate_student!
    end
  end

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
