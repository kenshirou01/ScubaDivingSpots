class ApplicationController < ActionController::Base
  include SessionsHelper

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインをしてください。"
      redirect_to login_url, status: :see_other
    end
  end
end
