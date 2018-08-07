class LunchesController < ApplicationController

  def index
    @lunches = Lunch.all
  end

  def show
    @lunch = Lunch.find_by(id: params[:id])
  end

  def new
    @lunches = Lunch.new
  end

end
