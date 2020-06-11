class AnswersController < ApplicationController
  def create
    @answer = Answer.new
    @answer.choice_made = params["choice_made"].to_i
    @answer.choice_id = params["choice_id"].to_i
    @answer.user = current_user
    @answer.save
  end

  def update
    @answer = Answer.find(params["answer_id"].to_i)
    @answer.update({ choice_made: params["choice_made"].to_i })
  end
end
