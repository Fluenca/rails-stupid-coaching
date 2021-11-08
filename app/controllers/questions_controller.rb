class QuestionsController < ApplicationController
  def ask
  end

  def answer
     @answers = ''

    case
    when params[:question].upcase.include?('I AM GOING TO WORK')
      @answer = 'Great!'
    when params[:question].upcase.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
