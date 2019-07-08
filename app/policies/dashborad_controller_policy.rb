class DashboradControllerPolicy < ApplicationPolicy
  attr_reader :user, :dashboard

  def initialize(user, dashboard)
    @user = user
    @dashboard = dashboard
  end

  def index?
  	@user.admin?
  end
end
