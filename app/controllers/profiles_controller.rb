class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save
    redirect_to profiles_path
  end

  def show
    @profile.user_id = current_user.id
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :bio, :location)
  end
end
