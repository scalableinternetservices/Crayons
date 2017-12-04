class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :email, :password, :password_confirmation, :current_password])
  end

    before_action :check_rack_mini_profiler
    def check_rack_mini_profiler
      # for example - if current_user.admin?
      if params[:rmp]
        Rack::MiniProfiler.authorize_request
      end
    end
 end
