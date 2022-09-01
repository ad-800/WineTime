class WinesController < ApplicationController

  def index
    if params[:query].present?
      @wines = Wine.search_wines(params[:query])
      if @wines.any?
        @search = true
      else
        @search = nil
      end
    else
      @wines = Wine.all
      @search = false
    end
  end

  def show
    @wine = Wine.find(params[:id])
  end
end
