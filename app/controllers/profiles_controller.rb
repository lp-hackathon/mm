class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def create

  end

  def show
    @profile = Profile.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
  def show_params
    @profile = Profile.find(params[:id])
  end

end
