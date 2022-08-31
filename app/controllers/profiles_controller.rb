class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def me
    @collections = Collection.where(user: current_user)

    # rendering the page to specific page
    render :show
  end

  def show
    @collections = Collection.where(user: @user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
