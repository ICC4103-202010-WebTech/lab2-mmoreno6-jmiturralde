class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
