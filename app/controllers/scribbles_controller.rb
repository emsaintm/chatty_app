class ScribblesController < ApplicationController
  before_action :authenticate_user!

  def index
    @scribbles = Scribble.all
  end

  def show
    @scribble = Scribble.find(params[:id])
    # model gets you what you need ^ capitalized one is from model
  end

  def new
    @scribble = Scribble.new
  end

  def create
    @scribble = Scribble.new(scribble_params)
  
    respond_to do |format|
      if @scribble.save 
        format.html { redirect_to @scribble, notice: "Here's your scribble..." }
      else
        format.html { render :new }
      end
    end

  end

  def edit
  end



private

def scribble_params
  params.require(:scribble).permit(:message, :user_id)
end


end



