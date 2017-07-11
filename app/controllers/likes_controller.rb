class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_scribble


  def create
    # set_scribble
    # user_id (current user) / scribble_id (params)
    # make the like
    @scribble.likes.where(user_id: current_user.id).first_or_create


    # flash a notice
    # redirect somewhere
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "Liked." }
    end  
  end

  def destroy
    # set_scribble
    @scribble.likes.where(user_id: current_user.id).destroy_all 
    # find the like we want gone
    # SMASH!!!
    # flash a notice
    # redirect
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "Unliked." }


    end
  end

  private

  def set_scribble
    @scribble = Scribble.find(params[:scribble_id])  
  end
end
