class DashboradController < ApplicationController
  before_action :authenticate_user!

  def index
  	authorize self
  end
end