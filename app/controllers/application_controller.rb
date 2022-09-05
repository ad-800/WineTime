class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[answers username personality_id])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[photo username bio])
  end

  def after_sign_in_path_for(resource)
    me_profiles_path # Or :prefix_to_your_route
  end
end
