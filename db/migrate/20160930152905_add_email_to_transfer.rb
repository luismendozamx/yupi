class AddEmailToTransfer < ActiveRecord::Migration
  def change
    add_column :transfers, :email, :string
  end
end
