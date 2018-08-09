class LunchesController < ApplicationController
  def index
    @lunches = Lunch.all
  end

  def show
    @lunch = Lunch.find_by(id: params[:id])
  end

  def new
    @lunch = Lunch.new
  end

  def create
    @lunch = Lunch.new(lunch_params)
    user = User.find_by(name: params[:lunch][:user])
    @lunch.user = user
    @lunch.state = :scheduled
    if @lunch.save
      redirect_to lunches_path
    else
      render 'new'
    end
  end

  private

  def lunch_params
    params.require(:lunch).permit(:name, :scheduled_for, :place)
  end
end
