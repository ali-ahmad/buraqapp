class UsersController < ApplicationController
	  	  before_action :authenticate_user!
	  	  # before_action :set_user, only: [:show, :edit, :update, :destroy]
 
 	def index
		# query = params[:query].presence || '*'
		@users = User.all
		# authorize @users
	end

	def new
		@user = User.new
		# authorize @user
	end

	def create
		@user = User.new(user_params)
		# authorize @user
		if @user.save
			redirect_to users_path
		end
	end

	def edit
		@user = User.find params[:id]
	end

	def update
		@user = User.find params[:id]
		if @user.update_attributes params[:user]
		  flash[:notice] = 'The User is successfully updated!'
		  redirect_to users_path, :notice => "User updated."
		else
		  flash[:error] = @user.errors.full_messages[0]
		  redirect_to users_path, :alert => "Unable to update user."
		end
	end

	def show
		@user = User.find(params[:id])
	end

	# def discontinue
	# 	@user = User.update_all({discontinued: true}, {id: params[:user_ids]})
	# 	redirect_to users_path
	# end

	def destroy 
		@user = User.find_by_id(params[:id])
		if @user.destroy
		  redirect_to users_path, :notice => "User deleted."
		end
	end

	# private
	#     def set_user
	#       @user = User.find(params[:id])
	#       # authorize @user
	#     end


	def user_params
		params.require(:user).permit(:nicn, :firstname, :lastname, :my_skills, :phone, :phone2, :special_designation, :gender, :datetime, :new_albem, :website, :address, :email, :email2, :latitude, :longitude, :location, :locationpicker, :route, :country, :province, :city, :area, :facebook_link, :twitter_link, :whatsapp )
	end


	
end
