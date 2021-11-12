class CreatePlanets < ActiveRecord::Migration[6.1]
  def change
    create_table :planets do |t|
      t.integer :system_id
      t.string :name
      t.integer :diameter
      t.integer :mass
      t.integer :orbital_distance
      t.string :description
      t.string :image
      t.boolean :is_star

      t.timestamps
    end
  end
end
