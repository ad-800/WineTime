class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def me
    @collections = Collection.where(user: current_user)
    @recommended = wines_by_personality_type(current_user)
    @bookmarks = Bookmark.where(user: current_user)
  end

  def show
    @collections = Collection.where(user: @user)
    @recommended = wines_by_personality_type(@user)
  end

  private

  def set_user
    @user = User.find_by(username: params[:id])
  end

  def wines_by_personality_type(user)
    # get the personality type
    personality_type = user.personality.personality_type

    case personality_type
    when 1 # Stoic
      wines = Wine.where(
        bitter: 5..9,
        fruit: 5..9,
        mineral: 5..9,
        spice: 2..5,
        earth: 2..5
      )
    when 2 # Kickstarter
      wines = Wine.where(
        bitter: 7..10,
        fruit: 6..10,
        mineral: 6..10,
        spice: 6..10,
        earth: 3..6
      )
    when 3 # Connoisseur
      wines = Wine.where(
        bitter: 6..9,
        fruit: 1..3,
        mineral: 3..5,
        spice: 3..5,
        earth: 5..9
      )
    when 4 # Mediator
      wines = Wine.where(
        bitter: 3..6,
        fruit: 6..10,
        mineral: 5..8,
        spice: 6..10,
        earth: 1..3
      )
    when 5 # Romantic
      wines = Wine.where(
        bitter: 4..7,
        fruit: 4..7,
        mineral: 4..7,
        spice: 4..7,
        earth: 4..7
      )
    when 6 # Conservator
      wines = Wine.where(
        bitter: 7..10,
        fruit: 1..3,
        mineral: 3..7,
        spice: 1..3,
        earth: 1..5
      )
    when 7 # Adventurer
      wines = Wine.where(
        bitter: 1..10,
        fruit: 1..10,
        mineral: 1..10,
        spice: 1..10,
        earth: 1..10
      )
    end

    # get wines by personality type
    wines
  end
end
