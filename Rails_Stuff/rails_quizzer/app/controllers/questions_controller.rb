
class QuestionsController < ApplicationController

  def index
    @questions = Question.all

  end

  def questionare
    answer = params[:order]
    answer = URI.unescape(answer.to_s)
    @out = ""
    bang = false
    if answer != ""
      @questions = Question.all
      @questions.each do |check|
        if answer == check.answer #|| check == @questions[0].fail2 || check == @questions[0].fail3
          @out = "Correct!"
          bang = true
        end
      end
      if !bang
      @out = "Wrong! New Question."
      end
    end
    @questions = Question.all.shuffle
    @question = @questions.first
    @choices = [@question.answer, @question.fail1, @question.fail2, @question.fail3]
    @chzoices = @choices.shuffle

  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    @question.destroy
    redirect_to question_path
  end



  private

  def find_question
    @question = Question.find(params[:id])
  end

end
