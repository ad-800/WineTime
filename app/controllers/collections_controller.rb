class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[show edit update destroy]

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
    @wines = @collection.wines
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.user = current_user

    if @collection.save
      redirect_to me_profiles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @collection.update!(collection_params)
    redirect_to collection_path(@collection)
  end

  def destroy
    @collection.wines.destroy_all
    @collection.destroy
    redirect_to me_profiles_path
  end

  def add_wine
    @bottle = CollectionWine.new(collection_id: params[:id], wine_id: params[:collection][:wine])
    @bottle.save
    redirect_to me_profiles_path(current_user)
  end

  private

  def collection_params
    params.require(:collection).permit(:title, :user_id)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end
end
