class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new result create]

  def new
  end

  def result
    @answers = session[:answers]
    recommend_wine
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
end
