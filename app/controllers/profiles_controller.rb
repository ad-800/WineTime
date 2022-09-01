class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def me
    @collections = Collection.where(user: current_user)
    recommend_wine
    set_first_user_collection
    # rendering the page to specific page
    render :show
  end

  def show
    @collections = Collection.where(user: @user)
    recommend_wine
  end

  def recommend_wine
    # for now the recommended wines are randomly chosen
    @wines = Wine.all
    @recommended = Wine.order('RANDOM()').sample(3)
  end

  def set_first_user_collection
    @first_user_collection = @collections.first
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
