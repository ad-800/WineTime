class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[show create edit update destroy]

  def index
    @collections = Collection.all
  end

  def show
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    if collection.save
      redirect_to collection_path(@collection)
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
    @collection.destroy
    redirect_to collections_path, status: :see_others
  end

  private

  def collection_params
    params.require(:product).permit(:title)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end
end
