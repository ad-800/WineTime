class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to me_profiles_path
  end

  def new
    @bookmark = Bookmark.new
    @bookmark.collection_id = params[:collection]
    @bookmark.user_id = current_user.id
    # raise
    @bookmark.save
    redirect_to me_profiles_path
  end
end
