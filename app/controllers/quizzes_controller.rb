class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new result create]

  def new
  end

  def result
    @answers = session[:answers]
    recommend_wine
    personality
  end

  def create
    session[:answers] = params[:quizz].values
    redirect_to result_quizzes_path
  end

  def recommend_wine
    # for now the recommended wines are randomly chosen
    @wines = Wine.all
    @recommend_one = Wine.order('RANDOM()').first
    @recommend_two = Wine.order('RANDOM()').last
  end

  def personality
    @wines = Wine.all
    @personalities = Personality.all
    @personality = Personality.order('RANDOM()').first
    @wine_by_personality = []
    @personality.wines[0..2].each do |wine|
      @wine_by_personality << @wines.find_by(wine_unique_id: wine)
    end
  end
end
