module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_publisher
      flash.clear
      redirect_to(publisher_courses_path(current_publisher)) && return
    elsif current_student
      flash.clear
      redirect_to(student_courses_path(current_student)) && return
    end
  end
end
