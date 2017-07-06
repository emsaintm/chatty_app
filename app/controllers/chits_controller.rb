class ChitsController < ApplicationController
  before_action :authenticate_user!
  
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
