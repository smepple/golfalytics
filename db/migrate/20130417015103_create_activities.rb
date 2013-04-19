class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :facility_id
      t.string :type
      t.date :date_completed

      t.timestamps
    end
  end
end
