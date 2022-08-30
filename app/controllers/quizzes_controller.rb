class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new result]

  def new
  end

  def result
  end

  def create
    current_user.update(answers: params[:quizz].values)

    redirect_to quizzes_result_path
  end
end
