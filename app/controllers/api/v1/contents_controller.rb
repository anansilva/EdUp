class Api::V1::ContentsController < ApplicationController

  def index
    @contents = Content.all
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

