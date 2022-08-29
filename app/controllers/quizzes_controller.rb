class QuizzesController < ApplicationController
  def new
  end

  def create
    current_user.update(answers: params[:quizz].values)

    redirect_to root_path
  end
end
