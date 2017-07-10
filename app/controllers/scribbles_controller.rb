class ScribblesController < ApplicationController
  def index
    @scribbles = Scribble.all
  end

  def show
  end

  def new
    @scribble = Scribble.new
  end

  def edit
  end
end
