class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
  	# TODO change this
  	User.first
  end
end
