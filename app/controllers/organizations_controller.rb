class OrganizationsController < ApplicationController

	def index
	  	query = params[:query].presence || '*'
	  	@organizations = Organization.search(query)
	end

	def new
		@organization = Organization.new
	end

	def create
		@organization = Organization.new(organization_params)
		if @organization.save
			redirect_to organizations_path
		end
	end


	def show
		@organization = Organization.find(params[:id])
	end

	def edit
    @organization = Organization.find params[:id]
  end

	def destroy
    @organization = Organization.find_by_id(params[:id])
    if @organization.destroy
			redirect_to organizations_path
		end
  end

	def update

    @organization = Organization.find params[:id]
    if @organization.update_attributes params[:organization]
      flash[:notice] = 'The User is successfully updated!'
      redirect_to organizations_path
    else
      flash[:error] = @organization.errors.full_messages[0]
      redirect_to organizations_path
    end
  end

	def organization_params
		params.require(:organization).permit!
	end
end
