class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_category, only: [:show]

  def show
    @choice = Choice.where("category_id = ?", @category.id).sample
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
