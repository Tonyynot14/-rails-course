class ApplicationController < ActionController::Base


# Strong parameters within devise prevent user from adding fields to database that arent the ones originally created in devise. 
 before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name, :picture) }
   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name, :picture,:current_password) }
  end

end

