class ApplicationController < ActionController::Base
  attr_reader :current_user
  before_action :ensure_authenticated_user

  private

  def authenticate_user(user_id)
    if authenticated_user = User.find_by(id: user_id)
      cookies.encrypted[:user_id] ||= user_id
      @current_user = authenticated_user
    else
      @current_user = nil
      cookies.delete(:user_id)
      nil
    end
  end

  def ensure_authenticated_user
    authenticate_user(cookies.encrypted[:user_id]) || redirect_to(root_url)
  end
end
