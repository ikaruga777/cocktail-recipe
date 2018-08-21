class LunchesController < ApplicationController
  def index
    @lunches = Lunch.all
  end

  def show
    @lunch = Lunch.find_by(id: params[:id])
  end

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

  def destroy
    Lunch.find(params[:id]).destroy
    redirect_to lunches_path
  end

  private

  def lunch_params
    params.require(:lunch).permit(:scheduled_for, :place)
  end
end
