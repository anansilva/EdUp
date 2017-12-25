class Publishers::SessionsController < Devise::SessionsController
  include Accessible
  skip_before_action :check_user, only: :destroy


  # GET /resource/sign_in
  #   def new
  #     super
  #   end

  # POST /resource/sign_in
  # def create
  #   if params[:redirect_to].present?
  #     store_location_for(resource, params[:redirect_to])
  #   end
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
