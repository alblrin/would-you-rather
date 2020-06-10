class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_category, only: [:show]

  def show
    @choice = Choice.where("category_id = ?", @category.id).sample
    @answers = Answer.where("choice_id = ?", @choice.id)
    @first_choice_answers = @answers.where("choice_made = 0")
    @first_choice_proportion = @first_choice_answers.count.to_f / @answers.count
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
