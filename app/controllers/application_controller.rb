class ApplicationController < ActionController::Base

protected
  def authenticate_inviter!
    authenticate_student!(:force => true)
  end

  def after_sign_in_path
    # check for the class of the object to determine what type it is
    if !current_publisher.nil?
        publisher_courses_path(current_publisher)
    elsif !current_student.nil?
        student_courses_path(current_student)
    end
  end
end
