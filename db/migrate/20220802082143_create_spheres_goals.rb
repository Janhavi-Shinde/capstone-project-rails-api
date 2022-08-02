class CreateSpheresGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :spheres_goals do |t|
      t.references :goal, null: false, foreign_key: true
      t.references :sphere, null: false, foreign_key: true

      t.timestamps
    end
  end
end
