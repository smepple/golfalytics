class ActivitiesController < ApplicationController
  def new
    @activity = current_user.activities.new
  end

  def create
    @activity = current_user.activities.new(params[:activity])
    if @activity.save
      flash[:success] = "Activity saved"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def show
  end
end
