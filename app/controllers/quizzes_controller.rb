class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new result create]

  def new
  end

  def result
  end

  def create

    # current_user.update(answers: params[:quizz].values)
    @answers = params[:quizz].values
    # if visitor signs in (clicks log in)
      # @answers is saved

    redirect_to quizzes_result_path(@answers)
  end
end
