class LunchesController < ApplicationController
  before_action :set_lunch, only: %i[show edit update destroy]

  def index
    @lunches = Lunch.all
  end

  def show; end

  def new
    @lunch = Lunch.new(scheduled_for: Date.today)
    @lunch.user = current_user
  end

  def create
    @lunch = Lunch.new(lunch_params)
    @lunch.user = current_user
    if @lunch.save
      redirect_to lunches_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @lunch.update_attributes(lunch_params)
      redirect_to @lunch
    else
      render 'edit'
    end
  end

  def destroy
    @lunch.destroy
    redirect_to lunches_path
  end

  private

  def set_lunch
    @lunch = Lunch.find(params[:id])
  end

  def lunch_params
    params.require(:lunch).permit(:scheduled_for, :place)
  end
end
