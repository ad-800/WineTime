class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :check_signed_in

  def check_signed_in
    redirect_to me_profiles_path if signed_in?
  end

  def home
  end
end
