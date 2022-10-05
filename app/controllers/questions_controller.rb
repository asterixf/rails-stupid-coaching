class QuestionsController < ApplicationController
  def ask

  end

  def answer
    question = params[:question]
    if question  == "I am going to work"
      @my_answer = question
      @coach_answer = "Great!"
    elsif question.include? "?"
        @my_answer = question
        @coach_answer = "Silly question, get dressed and go to work!"
    else
      @my_answer = question
        @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
