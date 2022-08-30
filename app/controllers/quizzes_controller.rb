class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
    # current_user.update(answers: params[:quizz].values)
    @answers = params[:quizz].values
    # if visitor signs in (clicks log in)
      # @answers is saved
  end
end
