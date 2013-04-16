class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.integer :facility_id
      t.string :name
      t.decimal :rating_men
      t.decimal :rating_front_men
      t.decimal :rating_back_men
      t.integer :slope_men
      t.integer :slope_front_men
      t.integer :slope_back_men
      t.decimal :rating_women
      t.decimal :rating_front_women
      t.decimal :rating_back_women
      t.integer :slope_women
      t.integer :slope_front_women
      t.integer :slope_back_women

      t.timestamps
    end
  end
end
