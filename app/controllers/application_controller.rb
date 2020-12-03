class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :dni, :birth_date, :suscribed, :role, :phone_number])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :dni, :birth_date, :suscribed, :role, :phone_number, :email, :password, :current_password])
    end

    def pundit_user
        current_user
    end

end
