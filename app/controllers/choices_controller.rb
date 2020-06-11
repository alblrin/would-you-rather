class ChoicesController < ApplicationController
  def index
    @categories = Category.all
    @choices = Choice.all
  end

  def new
    @choice = Choice.new
    @categories = Category.all
  end

  def create
    @choice = Choice.new(choice_params)
    @category_id = params["choice"]["category"].to_i
    @category = Category.where("id = ?", @category_id).first
    @choice.category = @category
    @choice.created_by = current_user.username
    @choice.save

    redirect_to choices_path
  end

  def destroy
    @choice = Choice.find(params[:id])
    @choice.destroy

    redirect_to choices_path
  end

  private

  def choice_params
    params.require(:choice).permit(:first_choice, :second_choice, :category_id)
  end
end
