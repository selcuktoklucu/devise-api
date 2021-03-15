class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
        # binding.pry
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :user, :email,:password, :password_confirmation, :registration])
    end
end
