class SessionsController < ApplicationController
  def login
    if signed_in?
      redirect_to home_path
    end
  end

  def create
    unless authenticate!(params[:email], params[:password])
      reset_session
      redirect_to login_path, flash: {error: 'failed to authenticate!!'} and return
    end
    redirect_to home_path
  end

  def destroy
    reset_session
    redirect_to login_path
  end

  private
  def authenticate!(email, password)
    # todo: connect your external auth api
    if email == 'hoge@example.com' && password == '20181120'
      session[:email] = email
      return true
    end
  end
end
