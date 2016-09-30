class DashboardController < ApplicationController
  before_action :authenticate_user!
  respond_to :html

  layout 'dashboard'
  def home
    @transfers_sent = current_user.sent_transfers.order('created_at DESC')
    @transfers_received = current_user.received_transfers.order('created_at DESC')
  end

  def transfer_money
    @transfer = Transfer.new
    respond_with(@transfer)
  end

  def pay_service
    @transfer = Transfer.new
    @services = User.where(user_type: "service")
    respond_with(@transfer)
  end
end
