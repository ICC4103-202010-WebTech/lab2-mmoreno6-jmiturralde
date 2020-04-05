class ChangeTypeToDescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :tickets, :type, :description
  end
end
