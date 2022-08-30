class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new result create]

  def new
  end

  def result
    @answers = session[:answers]
  end

  def create
    session[:answers] = params[:quizz].values
    redirect_to quizzes_result_path
  end
end
