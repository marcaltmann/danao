class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def check_for_authentication
    unless logged_in?
      redirect_to :login
    end
  end

  private

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    return current_user != nil
  end
end
