class Api::V1::CoursesController < Api::V1::BaseController
  def index
    @courses = Course.all
  end
end
