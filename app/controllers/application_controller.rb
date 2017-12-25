class ApplicationController < ActionController::Base

  protect_from_forgery with: :null_session

  acts_as_token_authentication_handler_for Publisher

   before_action do
    if current_publisher != nil
      authenticate_publisher!
    else
      authenticate_student!
    end
  end

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
