class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to me_profiles_path
  end
end
