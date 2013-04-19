class CreatePlayedHoles < ActiveRecord::Migration
  def change
    create_table :played_holes do |t|
      t.integer :round_id
      t.integer :hole_number
      t.integer :strokes
      t.string :club_off_tee
      t.integer :tee_shot_distance
      t.string :fairway
      t.boolean :clear_approach
      t.string :approach_club
      t.integer :approach_distance
      t.string :approach
      t.integer :approach_miss_distance
      t.integer :chips
      t.integer :sand_shots
      t.boolean :up_and_down
      t.boolean :sand_save
      t.integer :putts
      t.integer :first_putt_distance
      t.integer :made_putt_distance
      t.integer :penalties
      t.integer :stroke_and_distance_penalties

      t.timestamps
    end
  end
end
