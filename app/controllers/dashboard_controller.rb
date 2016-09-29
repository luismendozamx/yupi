class DashboardController < ApplicationController
  before_action :authenticate_user!

  layout 'dashboard'
  def home
  end
end
