class ApplicationController < ActionController::Base
  def full_name
    @user.full_name
  end
end
