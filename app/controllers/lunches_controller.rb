class LunchesController < ApplicationController

  def index
    @lunches = Lunch.all
  end

  def new
    @lunches = Lunch.new
  end


end
