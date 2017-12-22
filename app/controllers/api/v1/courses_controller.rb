class Api::V1::CoursesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for Publisher, fallback_to_devise: false

  def index
    @courses = Course.all
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
