class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def show
    @collections = Collection.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
