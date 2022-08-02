class CreateSpheres < ActiveRecord::Migration[6.1]
  def change
    create_table :spheres do |t|
      t.string :title
      t.integer :user_id
      t.integer :goal_aim
      t.boolean :aim_achieved

      t.timestamps
    end
  end
end
