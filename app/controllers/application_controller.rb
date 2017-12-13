class ApplicationController < ActionController::Base
protected
  def after_sign_in_path_for(publisher)
    request.env['omniauth.origin'] || stored_location_for(resource) || courses_path
  end

end
