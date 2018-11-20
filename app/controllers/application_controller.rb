class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :signed_in?
  def current_user
    return nil if session[:email].blank?
    return session[:email]
  end

  def signed_in?
    current_user.present?
  end
end
