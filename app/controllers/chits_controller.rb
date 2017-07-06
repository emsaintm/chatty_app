class ChitsController < ApplicationController
  def index
    @chits = Chit.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
