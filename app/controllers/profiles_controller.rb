class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def me
    @collections = Collection.where(user: current_user)

    # rendering the page to specific page
    recommend_wine
    render :show
  end

  def show
    @collections = Collection.where(user: @user)
    recommend_wine
  end

  def recommend_wine
    # for now the recommended wines are randomly chosen
    @wines = Wine.all
    @recommend_one = Wine.order('RANDOM()').first
    @recommend_two = Wine.order('RANDOM()').last
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
