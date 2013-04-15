class RenameFacilityType < ActiveRecord::Migration
  def change
    rename_column :facilities, :type, :facility_type
  end
end
