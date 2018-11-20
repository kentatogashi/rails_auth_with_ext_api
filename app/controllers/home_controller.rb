class HomeController < ApplicationController
  before_action :is_authenticated
  def index
  end

  def is_authenticated
    unless signed_in?
      reset_session
      redirect_to login_path
    end
  end
end
