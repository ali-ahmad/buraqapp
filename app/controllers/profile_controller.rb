class ProfileController < ApplicationController
  before_action :authenticate_profile!
  # after_action :verify_authorized

  def index
    # query = params[:query].presence || '*'
    @profiles = Profile.all
    authorize Profile
  end

  def new
  	@profile = Profile.new
  end
  
  def create
  	@profile = Profile.new(profile_params)
  	if @profile.save
  		redirect_to profile_path
  	end
  end

  def edit
    @profile = Profile.find params[:id]
  end

	def update
    @profile = Profile.find params[:id]
      authorize @profile
    if @profile.update_attributes params[:profile]
      flash[:notice] = 'The User is successfully updated!'
      redirect_to profile_path, :notice => "User updated."
    else
      flash[:error] = @profile.errors.full_messages[0]
      redirect_to profile_path, :alert => "Unable to update user."
    end
  end

	def show
		@profile = Profile.find(params[:id])
    authorize @profile
	end

  def discontinue
    @profile = Profile.update_all({discontinued: true}, {id: params[:profile_ids]})
    redirect_to profile_path
  end

  def destroy 
    @profile = Profile.find_by_id(params[:id])
    authorize profile
    if @profile.destroy
      redirect_to profile_path, :notice => "User deleted."
    end
  end

  private

  def admin_only
    unless current_profile.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

	def profile_params
    params.require(:profile).permit(:role)
	end

end
