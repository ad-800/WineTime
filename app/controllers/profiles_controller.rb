class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def me
    @collections = Collection.where(user: current_user)
    recommend_wine
    set_first_user_collection
    # set_collection_wine
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
    @recommend_one = Wine.order('RANDOM()').first
    @recommend_two = Wine.order('RANDOM()').last
  end

  def set_first_user_collection
    @first_user_collection = Collection.find(current_user.id)
  end

  def set_collection_wine
    @collection_wine = CollectionWine.find(@first_user_collection.id)
    if collection_wine == nil
      @collection_wine_size = " ZERO "
    else
      @collection_wine_size = @collection_wine.wine_id.count.to_s
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
