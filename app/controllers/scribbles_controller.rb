class ScribblesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_scribble, only: [:edit, :show, :update, :destroy]

  def index
    @scribbles = Scribble.all
  end

  def show
    # before action gets @scribble we want to show
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
    # get the tweet we want to edit from the model and send it to the edit view
    # set_scribble before action gets the scribble we want to edit
  end

  def update
    # before action gets the scribble we want to update
    # update it with new info (from params)
    respond_to do |format|
      if @scribble.update(scribble_params)
        format.html { redirect_to @scribble, notice: "You changed that scribble."}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy  
    # set_scribble before action gets it --get the scribble we want to destroy
    # smash it
    @scribble.destroy
    # render the index view
    respond_to do |format| 
      if @scribble.destroy
        format.html { redirect_to scribbles_url, notice: 'Scribble deleted successfully.' }
      else
        format.html { render :index, notice: "Something went wrong.  Your scribble still exists.  You can try again." }
      end
    end
  end


private

def set_scribble
  @scribble = Scribble.find(params[:id])  
end

def scribble_params
  params.require(:scribble).permit(:message, :user_id)
end


end



