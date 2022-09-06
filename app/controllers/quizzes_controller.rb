class QuizzesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new result create]

  def result
    @answers = session[:answers]
    # recommend_wine
    personality
  end

  def create
    session[:answers] = params[:quizz].values
    redirect_to result_quizzes_path
  end

  def personality
    @wines = Wine.all
    @personality = Personality.find_by(personality_type: personality_by_answers)
    @wine_by_personality = []
    @personality.wines[0..2].each do |wine|
      @wine_by_personality << @wines.find_by(wine_unique_id: wine)
    end
  end

  private

  def personality_by_answers
    # initialize
    points = 0
    personality_type = 0

    # get the answers and calculate the points
    @answers.each_with_index do | answer, index |
      case index
      when 0
        case answer[0]
        when 'a'
          points += 5
        when 'b'
          points += 1
        when 'c'
          points += 3
        when 'd'
          points += 2
        end
      when 1
        case answer[0]
        when 'a'
          points += 1
        when 'b'
          points += 5
        when 'd'
          points += 2
        end
      when 2
        case answer[0]
        when 'a'
          points += 5
        when 'c'
          points += 3
        end
      when 3
        case answer[0]
        when 'a'
          points += 5
        when 'b'
          points += 2
        end
      when 4
        case answer[0]
        when 'a'
          points += 5
        when 'b'
          points += 4
        when 'c'
          points += 3
        when 'd'
          points += 1
        end
      when 5
        case answer[0]
        when 'a'
          points += 3
        when 'b'
          points += 1
        when 'c'
          points += 4
        when 'd'
          points += 5
        end
      else
        "Error: Number of answers not expected"
      end
    end

    # assign personality type
    if points >= 0 && points <= 4
      personality_type = 6 # Conservator
    elsif points >= 5 && points <= 8
      personality_type = 3 # Connoisseur
    elsif points >= 9 && points <= 12
      personality_type = 5 # Romantic
    elsif points >= 13 && points <= 16
      personality_type = 1 # Stoic
    elsif points >= 17 && points <= 19
      personality_type = 4 # Mediator
    elsif points >= 20 && points <= 22
      personality_type = 2 # Kickstarter
    elsif points >= 23
      personality_type = 7 # Adventurer
    end

    return personality_type
  end
end
