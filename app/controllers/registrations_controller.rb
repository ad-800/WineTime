class RegistrationsController < ApplicationController
  protected

  def after_sign_up_path_for(_resource)
    'profiles/user' # Or :prefix_to_your_route
  end
end
