class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_profile, only: [:show]

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.profile.create(profile_params)
    if @profile.valid?
      redirect_to profile_path(@profile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  private

  def require_authorized_for_current_profile
    if current_profile.user != current_user
      render text: "Unauthorized", status: :unauthorized
    end
  end

  helper_method :current_profile

  def current_profile
    @current_profile ||= Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :bio, :location)
  end
end
