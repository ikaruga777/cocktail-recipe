class LunchesController < ApplicationController
  def index
    @lunches = Lunch.all
  end

  def show
    @lunch = Lunch.find_by(id: params[:id])
  end

  def new
    @lunch = Lunch.new(scheduled_for: Date.today)
    @lunch.user = User.first
  end

  def create
    @lunch = Lunch.new(lunch_params)
    @lunch.user = User.first
    if @lunch.save
      redirect_to lunches_path
    else
      render 'new'
    end
  end

  private

  def lunch_params
    params.require(:lunch).permit(:scheduled_for, :place)
  end
end
