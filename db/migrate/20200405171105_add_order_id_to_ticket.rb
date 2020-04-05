class AddOrderIdToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :order, null: true, foreign_key: true
  end
end
