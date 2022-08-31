class CollectionwinesController < ApplicationController
  before_action :set_collection_wine, only: :destroy
  before_action :set_collection, only: [:new, :create]

  def new
    @bottle = CollectionWine.new
  end

  def create
    raise
    @bottle = CollectionWine.new(params[:collection_id])
    @bottle.collection = @collection
    if @bottle.save
      redirect_to me_profiles(current_user)
    else
      render :new
    end
  end

  def destroy
    @bottle.destroy
    redirect_to collection_path(@bottle.collection), status: :see_other
  end

  private

  def set_collection_wine
    @bottle = CollectionWine.find(params[:id])
  end

  def set_collection
    @collection = Collection.find(params[:collection_id])
  end
end
