class AddVenueIdToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :venue, null: true, foreign_key: true
  end
end
