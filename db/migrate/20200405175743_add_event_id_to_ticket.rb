class AddEventIdToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :event, null: true, foreign_key: true
  end
end
