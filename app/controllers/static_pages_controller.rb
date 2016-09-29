class StaticPagesController < ApplicationController
  def home
    if current_user
      redirect_to dashboard_home_path
    else
      render :layout => 'home'
    end
  end
end
