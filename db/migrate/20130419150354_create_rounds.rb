class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :activity_id
      t.integer :tee_id
      t.string :round_type
      t.integer :strokes

      t.timestamps
    end
  end
end
