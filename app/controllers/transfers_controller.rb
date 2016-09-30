class TransfersController < ApplicationController
  respond_to :html

  def send_money
    transfer = params[:transfer]
    user = User.find_by(email: transfer[:email])
    @transfer = Transfer.create(sender_id: current_user.id, receiver_id: user.id, amount: transfer[:amount])

    @sender = @transfer.sender
    @receiver = @transfer.receiver
    @sender.balance = @sender.balance - @transfer.amount
    @receiver.balance = @receiver.balance + @transfer.amount

    @transfer.save
    @sender.save
    @receiver.save

    flash[:notice] = "¡Transferencia exitosa!"
    respond_with(@transfer, location: dashboard_home_path)
  end

  def pay_service
    transfer = params[:transfer]
    user = User.find(transfer[:receiver_id])
    @transfer = Transfer.create(sender_id: current_user.id, receiver_id: user.id, amount: transfer[:amount])

    @sender = @transfer.sender
    @receiver = @transfer.receiver
    @sender.balance = @sender.balance - @transfer.amount
    @receiver.balance = @receiver.balance + @transfer.amount

    @transfer.save
    @sender.save
    @receiver.save

    flash[:notice] = "Gracias, recibimos tu pago"
    respond_with(@transfer, location: dashboard_home_path)
  end
end
