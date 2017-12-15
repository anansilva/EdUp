class CourseStudentsController < ApplicationController
  def new
    @course_student = CourseStudent.new
    @publisher = current_publisher
  end

  def create
    @publisher = current_publisher
    @course_student = CourseStudent.new(group_params)
    @course_student.publisher_id = @publisher.id
     if @course_student.save
      redirect_to publisher_courses_path
    else
      render :new
    end
  end

  def index
  end

  private

  def group_params
    params.require(:course_student).permit(:name, :course_id)
  end
end
