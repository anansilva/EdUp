class ApplicationController < ActionController::Base
protected
  def authenticate_inviter!
    authenticate_patient!(:force => true)
  end

  def after_sign_in_path_for(publisher)
    request.env['omniauth.origin'] || stored_location_for(resource) || publisher_courses_path(current_publisher)
  end

end
