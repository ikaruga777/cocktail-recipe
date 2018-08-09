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
    @lunch = Lunch.new
    user = User.find_by(name: params[:lunch][:user])
    @lunch.user = user
    # TODO: lunch_paramsでうまくやる方法をみつける
    @lunch.scheduled_for = params[:lunch][:scheduled_for]
    @lunch.place = params[:lunch][:place]
    @lunch.state = :scheduled
    if @lunch.save
      redirect_to lunches_path
    else
      render 'new'
    end
  end
end
