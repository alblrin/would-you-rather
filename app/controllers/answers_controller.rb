class AnswersController < ApplicationController
  def create
    @answer = Answer.new(params[:answer])
    @answer.save
  end

  private

  def answer_params
    params.require(:answer).permit(:choice_made)
  end
end
