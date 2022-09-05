class CollectionWinesController < ApplicationController
  def destroy
    @bottle = CollectionWine.find(params[:id])
    @bottle.destroy
    redirect_to collection_path(@bottle.collection), status: :see_other
  end
end
