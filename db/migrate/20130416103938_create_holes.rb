class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :tee_id
      t.integer :number
      t.integer :par_men
      t.integer :par_women
      t.integer :handicap_men
      t.integer :handicap_women
      t.integer :length

      t.timestamps
    end
  end
end
