class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :type
      t.string :name
      t.integer :holes

      t.timestamps
    end
  end
end
