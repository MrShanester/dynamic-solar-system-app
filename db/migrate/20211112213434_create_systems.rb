class CreateSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :user_id
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
