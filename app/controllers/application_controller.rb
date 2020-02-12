class ApplicationController < ActionController::Base
	include Pundit
  protect_from_forgery

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def after_sign_in_path_for(resource)
  	if current_user.admin?
  	  dashboard_path
  	else
  	  root_path
  	end
  end

  private



 



  def user_not_authorized
    flash[:error] = 'You are not authorized to view this page!'
    redirect_to(request.referrer || root_path)
  end
end