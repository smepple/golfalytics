class AddVenueIdToFacilities < ActiveRecord::Migration
  def change
    add_column :facilities, :venue_id, :integer
  end
end
