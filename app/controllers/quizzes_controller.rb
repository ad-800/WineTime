class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
    current_user.update(answers: params[:quizz].values)

    redirect_to root_path
  end
end
