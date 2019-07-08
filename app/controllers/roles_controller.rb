class RolesController < ApplicationController
  def index
  	@role = Role.first || Role.new
  end
end