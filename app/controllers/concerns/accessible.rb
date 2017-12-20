module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_publisher
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(publisher_courses_path(current_publisher)) && return
    elsif current_student
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(student_courses_path(current_student)) && return
    end
  end
end
